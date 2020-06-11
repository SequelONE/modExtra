// Подключаем первым способом
Ext.override(MODx.panel.Resource, {
    modExtraOriginals: {
        getFields: MODx.panel.Resource.prototype.getFields,
    },

    getFields: function (config) {
        var fields = this.modExtraOriginals.getFields.call(this, config);
        fields.filter(function (row) {
            if (row.id === 'modx-resource-tabs') {
                // Пушим таб в массив с другими табами
                row.items.push({
                    id: 'modextra-resource-tab',
                    title: _('modextra_items'),
                    layout: 'anchor',
                    items: [{
                        xtype: "modextra-grid-items",
                        width: "95%",
                        style: {
                            margin: '20px'
                        }
                    }],
                });
            }
        });

        return fields;
    },
});

// Подключаем вторым способом, если первым не получилось
Ext.ComponentMgr.onAvailable('modx-resource-tabs', function () {
    var tabs = this;
    tabs.on('beforerender', function () {
        // Проверяем, удался ли первый способ
        var is = tabs.items.items.filter(function (row) {
            return (row.id === 'modextra-resource-tab' || row.id === 'modextra-grid-items');
        });

        // Первый способ не удался
        if (is.length === 0) {
            // Добавляем таб нативными средствами
            tabs.add({
                id: 'modextra-resource-tab',
                title: _('modextra_items'),
                layout: 'anchor',
                items: [{
                    xtype: "modextra-grid-items",
                    width: "95%",
                }],
            });
        }
    });
});