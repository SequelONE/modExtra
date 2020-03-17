modExtra.window.CreateItem = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-item-window-create';
    }
    Ext.applyIf(config, {
        title: _('modextra_item_create'),
        width: 550,
        autoHeight: true,
        url: modExtra.config.connector_url,
        action: 'mgr/item/create',
        fields: this.getFields(config),
        keys: [{
            key: Ext.EventObject.ENTER, shift: true, fn: function () {
                this.submit()
            }, scope: this
        }]
    });
    modExtra.window.CreateItem.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.window.CreateItem, MODx.Window, {

    getFields: function (config) {
        return [{
            xtype: 'textfield',
            fieldLabel: _('modextra_item_name'),
            name: 'name',
            id: config.id + '-name',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'modx-combo-browser',
            fieldLabel: _('modextra_item_image'),
            name: 'image',
            id: config.id + '-image',
            source: MODx.config.modextra_source_images || MODx.config.default_media_source,
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'textarea',
            fieldLabel: _('modextra_item_description'),
            name: 'description',
            id: config.id + '-description',
            height: 150,
            anchor: '99%'
        }, {
            xtype: 'modextra-combo-database',
            fieldLabel: _('modextra_item_database'),
            name: 'supports_db',
            id: config.id + '-supports_db',
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'modextra-combo-category',
            fieldLabel: _('modextra_item_category'),
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'modextra-combo-user',
            fieldLabel: _('modextra_item_user'),
            name: 'createdby',
            id: config.id + '-createdby',
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'xcheckbox',
            boxLabel: _('modextra_item_active'),
            name: 'active',
            id: config.id + '-active',
            checked: true,
        }];
    },

    loadDropZones: function () {
    }

});
Ext.reg('modextra-item-window-create', modExtra.window.CreateItem);


modExtra.window.UpdateItem = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-item-window-update';
    }
    Ext.applyIf(config, {
        title: _('modextra_item_update'),
        width: 550,
        autoHeight: true,
        url: modExtra.config.connector_url,
        action: 'mgr/item/update',
        fields: this.getFields(config),
        keys: [{
            key: Ext.EventObject.ENTER, shift: true, fn: function () {
                this.submit()
            }, scope: this
        }]
    });
    modExtra.window.UpdateItem.superclass.constructor.call(this, config);
};
Ext.extend(modExtra.window.UpdateItem, MODx.Window, {

    getFields: function (config) {
        return [{
            xtype: 'hidden',
            name: 'id',
            id: config.id + '-id',
        }, {
            xtype: 'textfield',
            fieldLabel: _('modextra_item_name'),
            name: 'name',
            id: config.id + '-name',
            anchor: '99%',
            allowBlank: false,
        }, {
            xtype: 'modx-combo-browser',
            fieldLabel: _('modextra_item_image'),
            name: 'image',
            id: config.id + '-image',
            source: MODx.config.modextra_source_images || MODx.config.default_media_source,
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'textarea',
            fieldLabel: _('modextra_item_description'),
            name: 'description',
            id: config.id + '-description',
            anchor: '99%',
            height: 150,
        }, {
            xtype: 'modextra-combo-database',
            fieldLabel: _('modextra_item_database'),
            name: 'supports_db',
            id: config.id + '-supports_db',
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'modextra-combo-category',
            fieldLabel: _('modextra_item_category'),
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'modextra-combo-user',
            fieldLabel: _('modextra_item_user'),
            name: 'createdby',
            id: config.id + '-createdby',
            anchor: '99%',
            allowBlank: true,
        }, {
            xtype: 'xcheckbox',
            boxLabel: _('modextra_item_active'),
            name: 'active',
            id: config.id + '-active',
        }];
    },

    loadDropZones: function () {
    }

});
Ext.reg('modextra-item-window-update', modExtra.window.UpdateItem);