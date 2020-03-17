<?php

class modExtraCategoryCreateProcessor extends modObjectCreateProcessor
{
    public $objectType = 'modExtraCategory';
    public $classKey = 'modExtraCategory';
    public $languageTopics = ['modextra'];
    //public $permission = 'create';


    /**
     * @return bool
     */
    public function beforeSet()
    {
        $name = trim($this->getProperty('name'));
        if (empty($name)) {
            $this->modx->error->addField('name', $this->modx->lexicon('modextra_category_err_name'));
        } elseif ($this->modx->getCount($this->classKey, ['name' => $name])) {
            $this->modx->error->addField('name', $this->modx->lexicon('modextra_category_err_ae'));
        }

        return parent::beforeSet();
    }

}

return 'modExtraCategoryCreateProcessor';