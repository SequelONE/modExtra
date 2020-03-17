<?php

class modExtraCategoryGetListProcessor extends modObjectGetListProcessor
{
    public $objectType = 'modExtraCategory';
    public $classKey = 'modExtraCategory';
    public $defaultSortField = 'id';
    public $defaultSortDirection = 'DESC';
    //public $permission = 'list';


    /**
     * We do a special check of permissions
     * because our objects is not an instances of modAccessibleObject
     *
     * @return boolean|string
     */
    public function beforeQuery()
    {
        if (!$this->checkPermissions()) {
            return $this->modx->lexicon('access_denied');
        }

        return true;
    }


    /**
 * @param xPDOQuery $c
 *
 * @return xPDOQuery
 */
	public function prepareQueryBeforeCount(xPDOQuery $c)
	{
		$query = trim($this->getProperty('query'));

        $c->leftJoin('msCategory', 'msCategory', 'msCategory.id = modExtraCategory.shopcategory');
        $c->select(array($this->modx->getSelectColumns('modExtraCategory', 'modExtraCategory')));
        $c->select(array('msCategory.pagetitle as shopcategory_name'));

		if ($query) {

			$c->where([
				'name:LIKE' => "%{$query}%"
			]);
		}

		return $c;
	}


    /**
     * @param xPDOObject $object
     *
     * @return array
     */
    public function prepareRow(xPDOObject $object)
    {
		$array = $object->toArray();
		$array['actions'] = [];

		// Edit
		$array['actions'][] = [
			'cls' => '',
			'icon' => 'icon icon-edit',
			'title' => $this->modx->lexicon('modextra_category_update'),
			//'multiple' => $this->modx->lexicon('modextra_categories_update'),
			'action' => 'updateCategory',
			'button' => true,
			'menu' => true,
		];

		if (!$array['active']) {
			$array['actions'][] = [
				'cls' => '',
				'icon' => 'icon icon-power-off action-green',
				'title' => $this->modx->lexicon('modextra_category_enable'),
				'multiple' => $this->modx->lexicon('modextra_categories_enable'),
				'action' => 'enableCategory',
				'button' => true,
				'menu' => true,
			];
		} else {
			$array['actions'][] = [
				'cls' => '',
				'icon' => 'icon icon-power-off action-gray',
				'title' => $this->modx->lexicon('modextra_category_disable'),
				'multiple' => $this->modx->lexicon('modextra_categories_disable'),
				'action' => 'disableCategory',
				'button' => true,
				'menu' => true,
			];
		}

		// Remove
		$array['actions'][] = [
			'cls' => '',
			'icon' => 'icon icon-trash-o action-red',
			'title' => $this->modx->lexicon('modextra_category_remove'),
			'multiple' => $this->modx->lexicon('modextra_categories_remove'),
			'action' => 'removeCategory',
			'button' => true,
			'menu' => true,
		];

		return $array;
    }

}

return 'modExtraCategoryGetListProcessor';