<?php

class modExtraCategoryEnableProcessor extends modObjectProcessor
{
    public $objectType = 'modExtraCategory';
    public $classKey = 'modExtraCategory';
    public $languageTopics = ['modextra'];
    //public $permission = 'save';


    /**
     * @return array|string
     */
    public function process()
    {
        if (!$this->checkPermissions()) {
            return $this->failure($this->modx->lexicon('access_denied'));
        }

        $ids = $this->modx->fromJSON($this->getProperty('ids'));
        if (empty($ids)) {
            return $this->failure($this->modx->lexicon('modextra_category_err_ns'));
        }

        foreach ($ids as $id) {
            /** @var modExtraCategory $object */
            if (!$object = $this->modx->getObject($this->classKey, $id)) {
                return $this->failure($this->modx->lexicon('modextra_category_err_nf'));
            }

            $object->set('active', true);
            $object->save();
        }

        return $this->success();
    }

}

return 'modExtraCategoryEnableProcessor';
