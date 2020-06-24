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
        $data = $this->object->toArray();

        //
        if(!empty($data['products'])) {
            //
            $data['products'] = is_array($data['products'])
                ? $data['products']
                : explode(',', $data['products']);
            $data['products[]'] = [];

            //
            $q = $this->modx->newQuery('msProduct')
                ->select('id, pagetitle')
                ->where([
                    'id:IN' => $data['products'],
                ])
                ->sortby('FIELD(id, ' . join(',', $data['products']) . ')', '')
            ;
            if ($q->prepare()->execute()) {
                $data['products'] = [];
                foreach (($q->stmt->fetchAll(PDO::FETCH_ASSOC) ?: []) as $v) {
                    $data['products'][] = $v['pagetitle'];
                    $data['products[]'][] = $v;
                }
            }
        }

        //
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
            $data = array_merge($data, array($key => $rows));
        }

        $this->modx->log(1, 'modExtraItemGetProcessor $data ' . print_r($data, 1));

        return $this->success('', $data);
    }

}

return 'modExtraItemGetProcessor';