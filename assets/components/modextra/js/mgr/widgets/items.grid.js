modExtra.grid.Items = function (config) {
    config = config || {};
    if (!config.id) {
        config.id = 'modextra-grid-items';
    }
    Ext.applyIf(config, {
        url: modExtra.config.connector_url,
        fields: this.getFields(config),
        columns: this.getColumns(config),
        tbar: this.getTopBar(config),
        sm: new Ext.grid.CheckboxSelectionModel(),
        baseParams: {
            action: 'mgr/item/getlist'
        },
        listeners: {
            rowDblClick: function (grid, rowIndex, e) {
                var row = grid.store.getAt(rowIndex);
                this.updateItem(grid, e, row);
            }
        },
        viewConfig: {
            forceFit: true,
            enableRowBody: true,
            autoFill: true,
            showPreview: true,
            scrollOffset: 0,
            getRowClass: function (rec) {
                return !rec.data.active
                    ? 'modextra-grid-row-disabled'
                    : '';
            }
        },
        paging: true,
        remoteSort: true,
        autoHeight: true,
    });
    modExtra.grid.Items.superclass.constructor.call(this, config);

    // Clear selection on grid refresh
    this.store.on('load', function () {
        if (this._getSelectedIds().length) {
            this.getSelectionModel().clearSelections();
        }
    }, this);
};
Ext.extend(modExtra.grid.Items, MODx.grid.Grid, {
    windows: {},

    getMenu: function (grid, rowIndex) {
        var ids = this._getSelectedIds();

        var row = grid.getStore().getAt(rowIndex);
        var menu = modExtra.utils.getMenu(row.data['actions'], this, ids);

        this.addContextMenuItem(menu);
    },

    createItem: function (btn, e) {
        var w = MODx.load({
            xtype: 'modextra-item-window-create',
            id: Ext.id(),
            listeners: {
                success: {
                    fn: function () {
                        this.refresh();
                    }, scope: this
                }
            }
        });
        w.reset();
        w.setValues({active: true});
        w.show(e.target);
    },

    updateItem: function (btn, e, row) {
        if (typeof(row) != 'undefined') {
            this.menu.record = row.data;
        }
        else if (!this.menu.record) {
            return false;
        }
        var id = this.menu.record.id;

        MODx.Ajax.request({
            url: this.config.url,
            params: {
                action: 'mgr/item/get',
                id: id
            },
            listeners: {
                success: {
                    fn: function (r) {
                        var w = MODx.load({
                            xtype: 'modextra-item-window-update',
                            id: Ext.id(),
                            record: r,
                            listeners: {
                                success: {
                                    fn: function () {
                                        this.refresh();
                                    }, scope: this
                                }
                            }
                        });
                        w.reset();
                        w.setValues(r.object);
                        w.show(e.target);
                    }, scope: this
                }
            }
        });
    },

    removeItem: function () {
        var ids = this._getSelectedIds();
        if (!ids.length) {
            return false;
        }
        MODx.msg.confirm({
            title: ids.length > 1
                ? _('modextra_items_remove')
                : _('modextra_item_remove'),
            text: ids.length > 1
                ? _('modextra_items_remove_confirm')
                : _('modextra_item_remove_confirm'),
            url: this.config.url,
            params: {
                action: 'mgr/item/remove',
                ids: Ext.util.JSON.encode(ids),
            },
            listeners: {
                success: {
                    fn: function () {
                        this.refresh();
                    }, scope: this
                }
            }
        });
        return true;
    },

    disableItem: function () {
        var ids = this._getSelectedIds();
        if (!ids.length) {
            return false;
        }
        MODx.Ajax.request({
            url: this.config.url,
            params: {
                action: 'mgr/item/disable',
                ids: Ext.util.JSON.encode(ids),
            },
            listeners: {
                success: {
                    fn: function () {
                        this.refresh();
                    }, scope: this
                }
            }
        })
    },

    enableItem: function () {
        var ids = this._getSelectedIds();
        if (!ids.length) {
            return false;
        }
        MODx.Ajax.request({
            url: this.config.url,
            params: {
                action: 'mgr/item/enable',
                ids: Ext.util.JSON.encode(ids),
            },
            listeners: {
                success: {
                    fn: function () {
                        this.refresh();
                    }, scope: this
                }
            }
        })
    },

    uploadItem: function(btn,e) {
        if (!this.uploader) {
            aVer = MODx.config.version.split('.');
            uploaddialog = ((aVer[0] == 2) && aVer[1] >= 3)? MODx.util.MultiUploadDialog.Dialog : Ext.ux.UploadDialog.Dialog;

            this.uploader = new uploaddialog({
                title: _('upload'),
                url: this.config.url,
                base_params: {
                    action: 'mgr/item/upload',
                    docid: modExtra.config.docid
                },
                cls: 'ext-ux-uploaddialog-dialog modx-upload-window'
            });
            this.uploader.on('hide', this.refresh,this);
            this.uploader.on('close', this.refresh,this);
        }

        // Automatically open picker
        this.uploader.show(btn);
        this.uploader.buttons[0].input_file.dom.click();
    },

    getFields: function () {
        return ['id', 'name', 'description', 'image', 'supports_db', 'category_name', 'createdby_name', 'productsTitle', 'createdon', 'active', 'actions'];
    },

    getColumns: function () {
        return [{
            header: _('modextra_item_id'),
            dataIndex: 'id',
            sortable: true,
            width: 70
        }, {
            header: _('modextra_item_image'),
            dataIndex: 'image',
            sortable: true,
            width: 100,
            renderer: function(value){
                if(value) {
                    return '<img width="50" src="/' + value + '">';
                } else {
                    return '<img width="50" src="/assets/images/uploads/noimage.png">';
                }
            },
            editor: { xtype: 'modx-combo-browser' }
        }, {
            header: _('modextra_item_name'),
            dataIndex: 'name',
            sortable: true,
            width: 150,
        }, {
            header: _('modextra_item_database'),
            dataIndex: 'supports_db',
            sortable: false,
            width: 150,
        }, {
            header: _('modextra_item_description'),
            dataIndex: 'description',
            sortable: false,
            width: 250,
        }, {
            header: _('modextra_item_category'),
            dataIndex: 'category_name',
            sortable: false,
            width: 150,
        }, {
            header: _('modextra_products'),
            dataIndex: 'productsTitle',
            sortable: false,
            width: 150,
        }, {
            header: _('modextra_item_user'),
            dataIndex: 'createdby_name',
            sortable: false,
            width: 100,
        }, {
            header: _('modextra_item_createdon'),
            dataIndex: 'createdon',
            sortable: true,
            width: 100,
            renderer: modExtra.utils.renderDateTime,
        }, {
            header: _('modextra_item_active'),
            dataIndex: 'active',
            renderer: modExtra.utils.renderBoolean,
            sortable: true,
            width: 100,
        }, {
            header: _('modextra_grid_actions'),
            dataIndex: 'actions',
            renderer: modExtra.utils.renderActions,
            sortable: false,
            width: 150,
            id: 'actions'
        }];
    },

    getTopBar: function () {
        return [{
            xtype: 'button',
            cls: 'primary-button',
            text: '<i class="icon icon-download"></i> ' + _('modextra_item_upload'),
            handler: this.uploadItem,
            scope: this
        }, {
            text: '<i class="icon icon-cogs"></i> ',
            menu: [{
                text: '<i class="icon icon-plus"></i> ' + _('modextra_item_create'),
                cls: 'modextra-cogs',
                handler: this.createItem,
                scope: this
            }, {
                text: '<i class="icon icon-trash-o red"></i> ' + _('modextra_item_remove'),
                cls: 'modextra-cogs',
                handler: this.removeItem,
                scope: this
            }, {
                text: '<i class="icon icon-toggle-on green"></i> ' + _('modextra_item_enable'),
                cls: 'modextra-cogs',
                handler: this.enableItem,
                scope: this
            }, {
                text: '<i class="icon icon-toggle-off red"></i> ' + _('modextra_item_disable'),
                cls: 'modextra-cogs',
                handler: this.disableItem,
                scope: this
            }]
        }, '->', {
            xtype: 'modextra-field-search',
            width: 250,
            listeners: {
                search: {
                    fn: function (field) {
                        this._doSearch(field);
                    }, scope: this
                },
                clear: {
                    fn: function (field) {
                        field.setValue('');
                        this._clearSearch();
                    }, scope: this
                },
            }
        }];
    },

    onClick: function (e) {
        var elem = e.getTarget();
        if (elem.nodeName == 'BUTTON') {
            var row = this.getSelectionModel().getSelected();
            if (typeof(row) != 'undefined') {
                var action = elem.getAttribute('action');
                if (action == 'showMenu') {
                    var ri = this.getStore().find('id', row.id);
                    return this._showMenu(this, ri, e);
                }
                else if (typeof this[action] === 'function') {
                    this.menu.record = row.data;
                    return this[action](this, e);
                }
            }
        }
        return this.processEvent('click', e);
    },

    _getSelectedIds: function () {
        var ids = [];
        var selected = this.getSelectionModel().getSelections();

        for (var i in selected) {
            if (!selected.hasOwnProperty(i)) {
                continue;
            }
            ids.push(selected[i]['id']);
        }

        return ids;
    },

    _doSearch: function (tf) {
        this.getStore().baseParams.query = tf.getValue();
        this.getBottomToolbar().changePage(1);
    },

    _clearSearch: function () {
        this.getStore().baseParams.query = '';
        this.getBottomToolbar().changePage(1);
    },
});
Ext.reg('modextra-grid-items', modExtra.grid.Items);
