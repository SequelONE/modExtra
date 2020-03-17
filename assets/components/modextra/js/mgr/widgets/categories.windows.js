modExtra.window.CreateCategory = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-category-window-create';
    }
    Ext.applyIf(config, {
        title: _('modextra_category_create'),
        width: 350,
        autoHeight: true,
        url: modExtra.config.connector_url,
        action: 'mgr/category/create',
        fields: this.getFields(config),
        keys: [{
            key: Ext.EventObject.ENTER, shift: true, fn: function () {
                this.submit()
            }, scope: this
        }]
    });
    modExtra.window.CreateCategory.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.window.CreateCategory, MODx.Window, {

    getFields: function (config) {
        return [{
            xtype: 'textfield',
            fieldLabel: _('modextra_category_name'),
            name: 'name',
            id: config.id + '-name',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'textfield',
            fieldLabel: _('modextra_category_alias'),
            name: 'alias',
            id: config.id + '-alias',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'modextra-combo-shopcategory',
            fieldLabel: _('modextra_category_shopcategory'),
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'xcheckbox',
            boxLabel: _('modextra_category_active'),
            name: 'active',
            id: config.id + '-active',
            checked: true,
        }];
    },

    loadDropZones: function () {
    }

});
Ext.reg('modextra-category-window-create', modExtra.window.CreateCategory);


modExtra.window.UpdateCategory = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-category-window-update';
    }
    Ext.applyIf(config, {
        title: _('modextra_category_update'),
        width: 350,
        autoHeight: true,
        url: modExtra.config.connector_url,
        action: 'mgr/category/update',
        fields: this.getFields(config),
        keys: [{
            key: Ext.EventObject.ENTER, shift: true, fn: function () {
                this.submit()
            }, scope: this
        }]
    });
    modExtra.window.UpdateCategory.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.window.UpdateCategory, MODx.Window, {

    getFields: function (config) {
        return [{
            xtype: 'hidden',
            name: 'id',
            id: config.id + '-id',
        }, {
            xtype: 'textfield',
            fieldLabel: _('modextra_category_name'),
            name: 'name',
            id: config.id + '-name',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'textfield',
            fieldLabel: _('modextra_category_alias'),
            name: 'alias',
            id: config.id + '-alias',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'modextra-combo-shopcategory',
            fieldLabel: _('modextra_category_shopcategory'),
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'xcheckbox',
            boxLabel: _('modextra_category_active'),
            name: 'active',
            id: config.id + '-active',
        }];
    },

    loadDropZones: function () {
    }

});
Ext.reg('modextra-category-window-update', modExtra.window.UpdateCategory);