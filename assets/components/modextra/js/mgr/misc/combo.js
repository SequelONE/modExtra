modExtra.combo.Search = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        xtype: 'twintrigger',
        ctCls: 'x-field-search',
        allowBlank: true,
        msgTarget: 'under',
        emptyText: _('search'),
        name: 'query',
        triggerAction: 'all',
        clearBtnCls: 'x-field-search-clear',
        searchBtnCls: 'x-field-search-go',
        onTrigger1Click: this._triggerSearch,
        onTrigger2Click: this._triggerClear,
    });
    modExtra.combo.Search.superclass.constructor.call(this, config);
    this.on('render', function () {
        this.getEl().addKeyListener(Ext.EventObject.ENTER, function () {
            this._triggerSearch();
        }, this);
    });
    this.addEvents('clear', 'search');
};
Ext.extend(modExtra.combo.Search, Ext.form.TwinTriggerField, {

    initComponent: function () {
        Ext.form.TwinTriggerField.superclass.initComponent.call(this);
        this.triggerConfig = {
            tag: 'span',
            cls: 'x-field-search-btns',
            cn: [
                {tag: 'div', cls: 'x-form-trigger ' + this.searchBtnCls},
                {tag: 'div', cls: 'x-form-trigger ' + this.clearBtnCls}
            ]
        };
    },

    _triggerSearch: function () {
        this.fireEvent('search', this);
    },

    _triggerClear: function () {
        this.fireEvent('clear', this);
    },

});
modExtra.combo.Category = function (config) {
    config = config || {};

    Ext.applyIf(config, {
        name: 'category_id',
        fieldLabel: _('categories_' + config.name || 'category'),
        hiddenName: 'category_id',
        displayField: 'name',
        valueField: 'id',
        anchor: '99%',
        fields: ['name', 'id'],
        pageSize: 20,
        url: modExtra.config['connector_url'],
        typeAhead: true,
        editable: true,
        allowBlank: true,
        emptyText: _('no'),
        minChars: 1,
        baseParams: {
            action: 'mgr/category/getlist',
            combo: true,
            id: config.value,
        }
    });
    modExtra.combo.Category.superclass.constructor.call(this, config);
    this.on('expand', function () {
        if (!!this.pageTb) {
            this.pageTb.show();
        }
    });
};
Ext.extend(modExtra.combo.Category, MODx.combo.ComboBox);
modExtra.combo.Database = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        store: new Ext.data.ArrayStore({
            id: 'supports_db',
            fields: ['value',{name: 'name', type: 'string'}],
            data: [
                ['mysql','mysql'],
                ['sqllite','sqllite']
            ]
        }),
        mode: 'local',
        displayField: 'name',
        valueField: 'value'
    });
    modExtra.combo.Database.superclass.constructor.call(this,config);
};
Ext.extend(modExtra.combo.Database,MODx.combo.ComboBox);
modExtra.combo.DateTime = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        timePosition: 'right',
        allowBlank: true,
        hiddenFormat: 'Y-m-d H:i:s',
        dateFormat: MODx.config['manager_date_format'],
        timeFormat: MODx.config['manager_time_format'],
        dateWidth: 120,
        timeWidth: 120,
    });
    modExtra.combo.DateTime.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.combo.DateTime, Ext.ux.form.DateTime);
modExtra.combo.ShopCategory = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        fieldLabel: _('ms2_category'),
        description: '<b>[[*parent]]</b><br />' + _('ms2_product_parent_help'),
        fields: ['id', 'pagetitle', 'parents'],
        valueField: 'id',
        displayField: 'pagetitle',
        name: 'shopcategory',
        hiddenName: 'shopcategory',
        allowBlank: false,
        url: modExtra.config['connector_url'],
        baseParams: {
            action: 'mgr/category/getcats',
            combo: true,
            id: config.value
        },
        tpl: new Ext.XTemplate('\
            <tpl for="."><div class="x-combo-list-item minishop2-category-list-item">\
                <tpl if="parents">\
                    <div class="parents">\
                        <tpl for="parents">\
                            <nobr><small>{pagetitle} / </small></nobr>\
                        </tpl>\
                    </div>\
                </tpl>\
                <span>\
                    <small>({id})</small> <b>{pagetitle}</b>\
                </span>\
            </div></tpl>', {
            compiled: true
        }),
        itemSelector: 'div.minishop2-category-list-item',
        pageSize: 20,
        editable: true
    });
    modExtra.combo.ShopCategory.superclass.constructor.call(this, config);
    this.on('expand', function () {
        if (!!this.pageTb) {
            this.pageTb.show();
        }
    });
};
Ext.extend(modExtra.combo.ShopCategory, MODx.combo.ComboBox);
Ext.reg('modextra-combo-shopcategory', modExtra.combo.ShopCategory);
Ext.reg('modextra-combo-dates',modExtra.combo.DateTime);
Ext.reg('modextra-combo-database',modExtra.combo.Database);
Ext.reg('modextra-combo-category', modExtra.combo.Category);
Ext.reg('modextra-combo-search', modExtra.combo.Search);
Ext.reg('modextra-field-search', modExtra.combo.Search);