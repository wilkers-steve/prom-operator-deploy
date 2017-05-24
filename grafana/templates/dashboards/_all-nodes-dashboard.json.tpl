{
  "dashboard":
{
    "__inputs": [
        {
            "description": "",
            "label": "prometheus",
            "name": "DS_PROMETHEUS",
            "pluginId": "prometheus",
            "pluginName": "Prometheus",
            "type": "datasource"
        }
    ],
    "__requires": [
        {
            "id": "grafana",
            "name": "Grafana",
            "type": "grafana",
            "version": "4.1.1"
        },
        {
            "id": "graph",
            "name": "Graph",
            "type": "panel",
            "version": ""
        },
        {
            "id": "prometheus",
            "name": "Prometheus",
            "type": "datasource",
            "version": "1.0.0"
        },
        {
            "id": "singlestat",
            "name": "Singlestat",
            "type": "panel",
            "version": ""
        }
    ],
    "annotations": {
        "list": []
    },
    "description": "Dashboard to get an overview of one server",
    "editable": true,
    "gnetId": 22,
    "graphTooltip": 0,
    "hideControls": false,
    "id": null,
    "links": [],
    "refresh": false,
    "rows": [
        {
            "collapse": false,
            "height": "250px",
            "panels": [
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 3,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [],
                    "span": 6,
                    "stack": false,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(rate(node_cpu{mode=\"idle\"}[2m])) * 100",
                            "hide": false,
                            "intervalFactor": 10,
                            "legendFormat": "",
                            "refId": "A",
                            "step": 50
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "Idle cpu",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "cumulative"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "percent",
                            "label": "cpu usage",
                            "logBase": 1,
                            "max": null,
                            "min": 0,
                            "show": true
                        },
                        {
                            "format": "short",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                },
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 9,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [],
                    "span": 6,
                    "stack": false,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(node_load1)",
                            "intervalFactor": 4,
                            "legendFormat": "load 1m",
                            "refId": "A",
                            "step": 20,
                            "target": ""
                        },
                        {
                            "expr": "sum(node_load5)",
                            "intervalFactor": 4,
                            "legendFormat": "load 5m",
                            "refId": "B",
                            "step": 20,
                            "target": ""
                        },
                        {
                            "expr": "sum(node_load15)",
                            "intervalFactor": 4,
                            "legendFormat": "load 15m",
                            "refId": "C",
                            "step": 20,
                            "target": ""
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "System load",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "cumulative"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "percentunit",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        },
                        {
                            "format": "short",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                }
            ],
            "repeat": null,
            "repeatIteration": null,
            "repeatRowId": null,
            "showTitle": false,
            "title": "New row",
            "titleSize": "h6"
        },
        {
            "collapse": false,
            "height": "250px",
            "panels": [
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 4,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [
                        {
                            "alias": "node_memory_SwapFree{instance=\"172.17.0.1:9100\",job=\"prometheus\"}",
                            "yaxis": 2
                        }
                    ],
                    "span": 9,
                    "stack": true,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(node_memory_MemTotal) - sum(node_memory_MemFree) - sum(node_memory_Buffers) - sum(node_memory_Cached)",
                            "intervalFactor": 2,
                            "legendFormat": "memory usage",
                            "metric": "memo",
                            "refId": "A",
                            "step": 4,
                            "target": ""
                        },
                        {
                            "expr": "sum(node_memory_Buffers)",
                            "interval": "",
                            "intervalFactor": 2,
                            "legendFormat": "memory buffers",
                            "metric": "memo",
                            "refId": "B",
                            "step": 4,
                            "target": ""
                        },
                        {
                            "expr": "sum(node_memory_Cached)",
                            "interval": "",
                            "intervalFactor": 2,
                            "legendFormat": "memory cached",
                            "metric": "memo",
                            "refId": "C",
                            "step": 4,
                            "target": ""
                        },
                        {
                            "expr": "sum(node_memory_MemFree)",
                            "interval": "",
                            "intervalFactor": 2,
                            "legendFormat": "memory free",
                            "metric": "memo",
                            "refId": "D",
                            "step": 4,
                            "target": ""
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "Memory usage",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "individual"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": "0",
                            "show": true
                        },
                        {
                            "format": "short",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                },
                {
                    "cacheTimeout": null,
                    "colorBackground": false,
                    "colorValue": false,
                    "colors": [
                        "rgba(50, 172, 45, 0.97)",
                        "rgba(237, 129, 40, 0.89)",
                        "rgba(245, 54, 54, 0.9)"
                    ],
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "format": "percent",
                    "gauge": {
                        "maxValue": 100,
                        "minValue": 0,
                        "show": true,
                        "thresholdLabels": false,
                        "thresholdMarkers": true
                    },
                    "id": 5,
                    "interval": null,
                    "links": [],
                    "mappingType": 1,
                    "mappingTypes": [
                        {
                            "name": "value to text",
                            "value": 1
                        },
                        {
                            "name": "range to text",
                            "value": 2
                        }
                    ],
                    "maxDataPoints": 100,
                    "nullPointMode": "connected",
                    "nullText": null,
                    "postfix": "",
                    "postfixFontSize": "50%",
                    "prefix": "",
                    "prefixFontSize": "50%",
                    "rangeMaps": [
                        {
                            "from": "null",
                            "text": "N/A",
                            "to": "null"
                        }
                    ],
                    "span": 3,
                    "sparkline": {
                        "fillColor": "rgba(31, 118, 189, 0.18)",
                        "full": false,
                        "lineColor": "rgb(31, 120, 193)",
                        "show": false
                    },
                    "targets": [
                        {
                            "expr": "((sum(node_memory_MemTotal) - sum(node_memory_MemFree) - sum(node_memory_Buffers) - sum(node_memory_Cached)) / sum(node_memory_MemTotal)) * 100",
                            "intervalFactor": 2,
                            "metric": "",
                            "refId": "A",
                            "step": 60,
                            "target": ""
                        }
                    ],
                    "thresholds": "80, 90",
                    "title": "Memory usage",
                    "type": "singlestat",
                    "valueFontSize": "80%",
                    "valueMaps": [
                        {
                            "op": "=",
                            "text": "N/A",
                            "value": "null"
                        }
                    ],
                    "valueName": "avg"
                }
            ],
            "repeat": null,
            "repeatIteration": null,
            "repeatRowId": null,
            "showTitle": false,
            "title": "New row",
            "titleSize": "h6"
        },
        {
            "collapse": false,
            "height": "250px",
            "panels": [
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 6,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [
                        {
                            "alias": "read",
                            "yaxis": 1
                        },
                        {
                            "alias": "{instance=\"172.17.0.1:9100\"}",
                            "yaxis": 2
                        },
                        {
                            "alias": "io time",
                            "yaxis": 2
                        }
                    ],
                    "span": 9,
                    "stack": false,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(rate(node_disk_bytes_read[5m]))",
                            "hide": false,
                            "intervalFactor": 4,
                            "legendFormat": "read",
                            "refId": "A",
                            "step": 8,
                            "target": ""
                        },
                        {
                            "expr": "sum(rate(node_disk_bytes_written[5m]))",
                            "intervalFactor": 4,
                            "legendFormat": "written",
                            "refId": "B",
                            "step": 8
                        },
                        {
                            "expr": "sum(rate(node_disk_io_time_ms[5m]))",
                            "intervalFactor": 4,
                            "legendFormat": "io time",
                            "refId": "C",
                            "step": 8
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "Disk I/O",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "cumulative"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        },
                        {
                            "format": "ms",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                },
                {
                    "cacheTimeout": null,
                    "colorBackground": false,
                    "colorValue": false,
                    "colors": [
                        "rgba(50, 172, 45, 0.97)",
                        "rgba(237, 129, 40, 0.89)",
                        "rgba(245, 54, 54, 0.9)"
                    ],
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "format": "percentunit",
                    "gauge": {
                        "maxValue": 1,
                        "minValue": 0,
                        "show": true,
                        "thresholdLabels": false,
                        "thresholdMarkers": true
                    },
                    "id": 7,
                    "interval": null,
                    "links": [],
                    "mappingType": 1,
                    "mappingTypes": [
                        {
                            "name": "value to text",
                            "value": 1
                        },
                        {
                            "name": "range to text",
                            "value": 2
                        }
                    ],
                    "maxDataPoints": 100,
                    "nullPointMode": "connected",
                    "nullText": null,
                    "postfix": "",
                    "postfixFontSize": "50%",
                    "prefix": "",
                    "prefixFontSize": "50%",
                    "rangeMaps": [
                        {
                            "from": "null",
                            "text": "N/A",
                            "to": "null"
                        }
                    ],
                    "span": 3,
                    "sparkline": {
                        "fillColor": "rgba(31, 118, 189, 0.18)",
                        "full": false,
                        "lineColor": "rgb(31, 120, 193)",
                        "show": false
                    },
                    "targets": [
                        {
                            "expr": "(sum(node_filesystem_size{device!=\"rootfs\"}) - sum(node_filesystem_free{device!=\"rootfs\"})) / sum(node_filesystem_size{device!=\"rootfs\"})",
                            "intervalFactor": 2,
                            "refId": "A",
                            "step": 60,
                            "target": ""
                        }
                    ],
                    "thresholds": "0.75, 0.9",
                    "title": "Disk space usage",
                    "type": "singlestat",
                    "valueFontSize": "80%",
                    "valueMaps": [
                        {
                            "op": "=",
                            "text": "N/A",
                            "value": "null"
                        }
                    ],
                    "valueName": "current"
                }
            ],
            "repeat": null,
            "repeatIteration": null,
            "repeatRowId": null,
            "showTitle": false,
            "title": "New row",
            "titleSize": "h6"
        },
        {
            "collapse": false,
            "height": "250px",
            "panels": [
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 8,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [
                        {
                            "alias": "transmitted ",
                            "yaxis": 2
                        }
                    ],
                    "span": 6,
                    "stack": false,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(rate(node_network_receive_bytes{device!~\"lo\"}[5m]))",
                            "hide": false,
                            "intervalFactor": 2,
                            "legendFormat": "",
                            "refId": "A",
                            "step": 10,
                            "target": ""
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "Network received",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "cumulative"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        },
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                },
                {
                    "alerting": {},
                    "aliasColors": {},
                    "bars": false,
                    "datasource": "${DS_PROMETHEUS}",
                    "editable": true,
                    "error": false,
                    "fill": 1,
                    "grid": {},
                    "id": 10,
                    "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                    },
                    "lines": true,
                    "linewidth": 2,
                    "links": [],
                    "nullPointMode": "connected",
                    "percentage": false,
                    "pointradius": 5,
                    "points": false,
                    "renderer": "flot",
                    "seriesOverrides": [
                        {
                            "alias": "transmitted ",
                            "yaxis": 2
                        }
                    ],
                    "span": 6,
                    "stack": false,
                    "steppedLine": false,
                    "targets": [
                        {
                            "expr": "sum(rate(node_network_transmit_bytes{device!~\"lo\"}[5m]))",
                            "hide": false,
                            "intervalFactor": 2,
                            "legendFormat": "",
                            "refId": "B",
                            "step": 10,
                            "target": ""
                        }
                    ],
                    "thresholds": [],
                    "timeFrom": null,
                    "timeShift": null,
                    "title": "Network transmitted",
                    "tooltip": {
                        "msResolution": false,
                        "shared": true,
                        "sort": 0,
                        "value_type": "cumulative"
                    },
                    "type": "graph",
                    "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                    },
                    "yaxes": [
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        },
                        {
                            "format": "bytes",
                            "label": null,
                            "logBase": 1,
                            "max": null,
                            "min": null,
                            "show": true
                        }
                    ]
                }
            ],
            "repeat": null,
            "repeatIteration": null,
            "repeatRowId": null,
            "showTitle": false,
            "title": "New row",
            "titleSize": "h6"
        }
    ],
    "schemaVersion": 14,
    "style": "dark",
    "tags": [
        "prometheus"
    ],
    "templating": {
        "list": []
    },
    "time": {
        "from": "now-1h",
        "to": "now"
    },
    "timepicker": {
        "refresh_intervals": [
            "5s",
            "10s",
            "30s",
            "1m",
            "5m",
            "15m",
            "30m",
            "1h",
            "2h",
            "1d"
        ],
        "time_options": [
            "5m",
            "15m",
            "1h",
            "6h",
            "12h",
            "24h",
            "2d",
            "7d",
            "30d"
        ]
    },
    "timezone": "browser",
    "title": "All Nodes",
    "version": 1
}
,
  "inputs": [
    {
      "name": "DS_PROMETHEUS",
      "pluginId": "prometheus",
      "type": "datasource",
      "value": "prometheus"
    }
  ],
  "overwrite": true
}
