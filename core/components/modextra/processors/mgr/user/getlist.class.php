<?php

class modExtraUserGetListProcessor extends modObjectGetListProcessor
{
    public $objectType = 'modUser';
    public $classKey = 'modUser';
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

        if ($query) {
            $c->where([
                'username:LIKE' => "%{$query}%",
                'OR:active:LIKE' => "%{$query}%"
            ]);
        }

        return $c;
    }

}

return 'modExtraUserGetListProcessor';