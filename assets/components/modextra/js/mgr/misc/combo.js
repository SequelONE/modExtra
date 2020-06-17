modExtra.combo.ComboBoxDefault = function (config) {
    config = config || {};

    Ext.applyIf(config, {
        assertValue : function(){
            var val = this.getRawValue(),
                rec;
            if(this.valueField && Ext.isDefined(this.value)){
                rec = this.findRecord(this.valueField, this.value);
            }
            if(!rec && this.forceSelection){
                if(val.length > 0 && val != this.emptyText){
                    this.el.dom.value = Ext.value(this.lastSelectionText, '');
                    this.applyEmptyText();
                }else{
                    this.clearValue();
                }
            }else{
                if(rec && this.valueField){
                    if (this.value == val){
                        return;
                    }
                    val = rec.get(this.valueField || this.displayField);
                }
                this.setValue(val);
            }
        },

    });
    modExtra.combo.ComboBoxDefault.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.combo.ComboBoxDefault, MODx.combo.ComboBox);
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
        pageSize: 5,
        emptyText: _('ms2_combo_select'),
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
MODx.combo.User = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        name: 'createdby',
        hiddenName: 'createdby',
        displayField: 'username',
        valueField: 'id',
        fields: ['username','id'],
        pageSize: 20,
        url: modExtra.config['connector_url'],
        baseParams: {
            action: 'mgr/user/getlist',
        },
        typeAhead: true,
        editable: true,
    });
    MODx.combo.User.superclass.constructor.call(this,config);
};
Ext.extend(MODx.combo.User,MODx.combo.ComboBox);
modExtra.combo.Product = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        id: 'modextra-combo-product',
        fieldLabel: _('ms2_product_name'),
        fields: ['id', 'pagetitle', 'parents'],
        valueField: 'id',
        displayField: 'pagetitle',
        name: 'product_id',
        hiddenName: 'product_id',
        allowBlank: false,
        url: modExtra.config['connector_url'],
        baseParams: {
            action: 'mgr/product/getlist',
            combo: true,
            id: config.value
        },
        tpl: new Ext.XTemplate('\
            <tpl for=".">\
                <div class="x-combo-list-item minishop2-product-list-item" ext:qtip="{pagetitle}">\
                    <tpl if="parents">\
                        <span class="parents">\
                            <tpl for="parents">\
                                <nobr><small>{pagetitle} / </small></nobr>\
                            </tpl>\
                        </span><br/>\
                    </tpl>\
                    <span><small>({id})</small> <b>{pagetitle}</b></span>\
                </div>\
            </tpl>', {compiled: true}
        ),
        pageSize: 5,
        emptyText: _('ms2_combo_select'),
        editable: true,
    });
    modExtra.combo.Product.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.combo.Product, modExtra.combo.ComboBoxDefault);
modExtra.combo.Options = function(config) {
    config = config || {};

    if (config.mode == 'remote') {
        Ext.applyIf(config, {
            pageSize: 10,
            paging: true,
        });
    }

    Ext.applyIf(config,{
        xtype:'superboxselect',
        allowBlank: true,
        msgTarget: 'under',
        allowAddNewData: true,
        addNewDataOnBlur : true,
        resizable: true,
        forceSelection: true,
        name: 'products[]',
        hiddenName: 'products[]',
        anchor:'99%',
        minChars: 1,
        fieldLabel: _('ms2_product_name'),
        fields: ['id', 'pagetitle', 'parents'],
        valueField: 'id',
        displayField: 'pagetitle',
        url: modExtra.config['connector_url'],
        store: new Ext.data.JsonStore({
            id: (config.name || 'products') + '-options',
            root: 'results',
            autoLoad: true,
            autoSave: false,
            totalProperty: 'total',
            fields: ['id', 'pagetitle'],
            url: modExtra.config['connector_url'],
            baseParams: {
                action: 'mgr/product/getoptions',
                combo: true,
                id: config.value
            },
            value: 'id',
            tpl: new Ext.XTemplate('\
            <tpl for=".">\
                <div class="x-combo-list-item minishop2-product-list-item" ext:qtip="{pagetitle}">\
                    <tpl if="parents">\
                        <span class="parents">\
                            <tpl for="parents">\
                                <nobr><small>{pagetitle} / </small></nobr>\
                            </tpl>\
                        </span><br/>\
                    </tpl>\
                    <span><small>({id})</small> <b>{pagetitle}</b></span>\
                </div>\
            </tpl>', {compiled: true}
            ),
        }),
        mode: 'remote',
        triggerAction: 'all',
        extraItemCls: 'x-tag',
        expandBtnCls: 'x-form-trigger',
        clearBtnCls: 'x-form-trigger',
        listeners: {
            newItem: function(bs,v, f) {bs.addItem({pagetitle: v});},
        },
        pageSize: 5,
        editable: true,
        renderTo: Ext.getBody(),
    });
    //config.name += '[]';
    modExtra.combo.Options.superclass.constructor.call(this,config);
};
Ext.extend(modExtra.combo.Options,Ext.ux.form.SuperBoxSelect);
Ext.reg('modextra-combo-combobox-default', modExtra.combo.ComboBoxDefault);
Ext.reg('modextra-combo-user',MODx.combo.User);
Ext.reg('modextra-combo-shopcategory', modExtra.combo.ShopCategory);
Ext.reg('modextra-combo-dates',modExtra.combo.DateTime);
Ext.reg('modextra-combo-database',modExtra.combo.Database);
Ext.reg('modextra-combo-category', modExtra.combo.Category);
Ext.reg('modextra-combo-search', modExtra.combo.Search);
Ext.reg('modextra-field-search', modExtra.combo.Search);
Ext.reg('modextra-combo-product', modExtra.combo.Product);
Ext.reg('modextra-combo-options', modExtra.combo.Options);