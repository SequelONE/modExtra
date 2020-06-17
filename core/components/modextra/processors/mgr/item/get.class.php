<?php

class modExtraItemGetProcessor extends modObjectGetProcessor
{
    public $objectType = 'modExtraItem';
    public $classKey = 'modExtraItem';
    public $languageTopics = ['modextra:default'];
    //public $permission = 'view';


    /**
     * We doing special check of permission
     * because of our objects is not an instances of modAccessibleObject
     *
     * @return mixed
     */
    public function process()
    {
        if (!$this->checkPermissions()) {
            return $this->failure($this->modx->lexicon('access_denied'));
        }

        return parent::process();
    }

    public function cleanup()
    {
        $array = $this->object->toArray();
        if(!empty($array['products'])) {
            $array['products'] = implode(',', $array['products']);
        }

        $products = $this->modx->fromJSON($this->getProperty('products', "[]"));
        foreach ($products as $key) {
            $rows = array();
            $c = $this->modx->newQuery('modExtraItem');
            $c->sortby('products', 'ASC');
            $c->select('products');
            $c->groupby('products');
            $c->where(array(
                'id' => $this->object->get('id')
            ));
            $c->limit(0);
            if ($c->prepare() && $c->stmt->execute()) {
                $rows = $c->stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            $array = array_merge($array, array($key => $rows));
        }

        return $this->success('', $array);
    }

}

return 'modExtraItemGetProcessor';