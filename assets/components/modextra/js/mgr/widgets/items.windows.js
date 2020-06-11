modExtra.window.CreateItem = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-item-window-create';
    }
    Ext.applyIf(config, {
        title: _('modextra_item_create'),
        width: 675,
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

    this.on('activate',function(w,e) {
        MODx.loadRTE(config.id + '-description');
    },this);
};
Ext.extend(modExtra.window.CreateItem, MODx.Window, {

    getFields: function (config) {
        return [{
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'textfield',
                    fieldLabel: _('modextra_item_name'),
                    name: 'name',
                    id: config.id + '-name',
                    anchor: '99%',
                    allowBlank: false,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-category',
                    fieldLabel: _('modextra_item_category'),
                    anchor: '99%',
                    allowBlank: true,
                }],
            }]
        }, {
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modx-combo-browser',
                    fieldLabel: _('modextra_item_image'),
                    name: 'image',
                    id: config.id + '-image',
                    source: MODx.config.modextra_source_images || MODx.config.default_media_source,
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-options',
                    fieldLabel: _('modextra_products'),
                    name: 'products',
                    id: config.id + '-products',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
        }, {
            xtype: 'textarea',
            fieldLabel: _('modextra_item_description'),
            name: 'description',
            id: config.id + '-description',
            height: 150,
            anchor: '99%',
            listeners: {
                render: function () {
                    MODx.loadRTE("description");
                }
            }
        }, {
            layout: 'column',
            border: true,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-database',
                    fieldLabel: _('modextra_item_database'),
                    name: 'supports_db',
                    id: config.id + '-supports_db',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-product',
                    fieldLabel: _('modextra_product_name'),
                    name: 'product_id',
                    id: config.id + '-product_id',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
        }, {
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-user',
                    fieldLabel: _('modextra_item_user'),
                    name: 'createdby',
                    id: config.id + '-createdby',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-dates',
                    fieldLabel: _('modextra_item_createdon'),
                    name: 'createdon',
                    id: config.id + '-createdon',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
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
        width: 675,
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

    this.on('activate',function(w,e) {
        MODx.loadRTE(config.id + '-description');
    },this);
};
Ext.extend(modExtra.window.UpdateItem, MODx.Window, {

    getFields: function (config) {
        return [{
            xtype: 'hidden',
            name: 'id',
            id: config.id + '-id',
        }, {
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'textfield',
                    fieldLabel: _('modextra_item_name'),
                    name: 'name',
                    id: config.id + '-name',
                    anchor: '99%',
                    allowBlank: false,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-category',
                    fieldLabel: _('modextra_item_category'),
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
        }, {
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modx-combo-browser',
                    fieldLabel: _('modextra_item_image'),
                    name: 'image',
                    id: config.id + '-image',
                    source: MODx.config.modextra_source_images || MODx.config.default_media_source,
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-options',
                    fieldLabel: _('modextra_products'),
                    name: 'products',
                    id: config.id + '-products',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
        }, {
            xtype: 'textarea',
            fieldLabel: _('modextra_item_description'),
            name: 'description',
            id: config.id + '-description',
            anchor: '99%',
            height: 150,
            listeners: {
                render: function () {
                    MODx.loadRTE("description");
                }
            }
        }, {
            layout: 'column',
            border: true,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-database',
                    fieldLabel: _('modextra_item_database'),
                    name: 'supports_db',
                    id: config.id + '-supports_db',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-product',
                    fieldLabel: _('modextra_product_name'),
                    name: 'product_id',
                    id: config.id + '-product_id',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
        }, {
            layout: 'column',
            border: false,
            anchor: '99%',
            items: [{
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-user',
                    fieldLabel: _('modextra_item_user'),
                    name: 'createdby',
                    id: config.id + '-createdby',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }, {
                columnWidth: .50,
                layout: 'form',
                defaults: {msgTarget: 'under'},
                border: false,
                items: [{
                    xtype: 'modextra-combo-dates',
                    fieldLabel: _('modextra_item_createdon'),
                    name: 'createdon',
                    id: config.id + '-createdon',
                    anchor: '99%',
                    allowBlank: true,
                }],
            }],
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