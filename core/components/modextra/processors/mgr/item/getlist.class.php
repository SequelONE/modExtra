<?php

class modExtraItemGetListProcessor extends modObjectGetListProcessor
{
    public $objectType = 'modExtraItem';
    public $classKey = 'modExtraItem';
    public $defaultSortField = 'id';
    public $defaultSortDirection = 'DESC';
    protected $productsList = [];
    //public $permission = 'list';

    /**
     * @return bool
     */
    public function initialize()
    {
        if ($this->getProperty('combo') && !$this->getProperty('limit') && $id = (int)$this->getProperty('id')) {
            $this->item_id = $id;
        }

        return true;
    }

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

        $c->leftJoin('modExtraCategory', 'modExtraCategory', 'modExtraCategory.id = modExtraItem.category_id');
        $c->select(array($this->modx->getSelectColumns('modExtraItem', 'modExtraItem')));
        $c->select(array('modExtraCategory.name as category_name'));

        $c->leftJoin('modUser', 'modUser', 'modUser.id = modExtraItem.createdby');
        $c->select(array($this->modx->getSelectColumns('modExtraItem', 'modExtraItem')));
        $c->select(array('modUser.username as createdby_name'));


        if ($query) {
            $c->where([
                'name:LIKE' => "%{$query}%",
                'OR:category_id:LIKE' => "%{$query}%"
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

        $q = $this->modx->newQuery('modResource');
        if(!is_array($array['products'])) {
            $array['products'] = explode(',', $array['products']);
        }
        $q->where(array('id:IN' => $array['products']));
        $q->select(array('pagetitle'));
        if($q->prepare() && $q->stmt->execute()) {
            $resources = $q->stmt->fetchAll(PDO::FETCH_ASSOC);
            $array['productsTitle'] = array_map(function($res){
                return $res['pagetitle'];
            },$resources);
            $array['productsTitle'] = implode(',', $array['productsTitle']);
        }

        // Edit
        $array['actions'][] = [
            'cls' => '',
            'icon' => 'icon icon-edit',
            'title' => $this->modx->lexicon('modextra_item_update'),
            //'multiple' => $this->modx->lexicon('modextra_items_update'),
            'action' => 'updateItem',
            'button' => true,
            'menu' => true,
        ];

        if (!$array['active']) {
            $array['actions'][] = [
                'cls' => '',
                'icon' => 'icon icon-power-off action-green',
                'title' => $this->modx->lexicon('modextra_item_enable'),
                'multiple' => $this->modx->lexicon('modextra_items_enable'),
                'action' => 'enableItem',
                'button' => true,
                'menu' => true,
            ];
        } else {
            $array['actions'][] = [
                'cls' => '',
                'icon' => 'icon icon-power-off action-gray',
                'title' => $this->modx->lexicon('modextra_item_disable'),
                'multiple' => $this->modx->lexicon('modextra_items_disable'),
                'action' => 'disableItem',
                'button' => true,
                'menu' => true,
            ];
        }

        // Remove
        $array['actions'][] = [
            'cls' => '',
            'icon' => 'icon icon-trash-o action-red',
            'title' => $this->modx->lexicon('modextra_item_remove'),
            'multiple' => $this->modx->lexicon('modextra_items_remove'),
            'action' => 'removeItem',
            'button' => true,
            'menu' => true,
        ];

        return $array;
    }

}

return 'modExtraItemGetListProcessor';