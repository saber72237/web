var dom = document.getElementById("heart");
var myChart = echarts.init(dom);
var category = new Array('2018/10/23 14:39:01', '2018/10/23 14:39:02', '2018/10/23 14:39:03', '2018/10/23 14:39:04',
                        '2018/10/23 14:39:05', '2018/10/23 14:39:06', '2018/10/23 14:39:07', '2018/10/23 14:39:08',
                        '2018/10/23 14:39:09', '2018/10/23 14:39:10', '2018/10/23 14:39:11', '2018/10/23 14:39:12',
                        '2018/10/23 14:39:13', '2018/10/23 14:39:14', '2018/10/23 14:39:15', '2018/10/23 14:39:16',
                        '2018/10/23 14:39:17', '2018/10/23 14:39:18', '2018/10/23 14:39:19', '2018/10/23 14:39:20',
                        '2018/10/23 14:39:21', '2018/10/23 14:39:22', '2018/10/23 14:39:23', '2018/10/23 14:39:24')
var heart = new Array(69,65,65,66,64,63,67,68,68,69,110,69,68,65,64,64,65,65,67,67,67,66,65,65)
option = {
    legend :{
        data: ['心率/bpm']
    },
    xAxis: {
        type: 'category',
        data: category
    },
    yAxis: {
        type: 'value',
        // scale: true
        // min: function (value) {
        //     return value.min - 20;
        // },
        // max: function (value) {
        //     return value.max +20;
        // }
    },
    series: [{
        name: '心率/bpm',
        data: heart,
        type: 'line',
        smooth: false,
        markPoint: {
            data: [
                {type: 'max', name: '最大值'},
                {type: 'min', name: '最小值'}
            ]
        },
        markLine: {
            data: [
                {yAxis: 100, name: '100bpm', itemStyle: {
                    normal: {
                        color: 'orange'
                    }
                }},
                {yAxis: 60, name: '60bpm', itemStyle: {
                    normal: {
                        color: 'orange'
                    }
                }}
            ]
        }
    }],
    tooltip: {
        show: true,
        trigger: 'axis'
    },
    dataZoom: {
        tpye: 'silider',
        startValue: category[category.length - 20]
    },
    toolbox: {
        feature: {
            dataZoom: {
                show: true,
                xAxisIndex: 0,
                orient: 'horizontal'
            },
            restore: {
                show: true,
                title: '还原'
            }
        }
    }
};
myChart.setOption(option);
window.onresize = myChart.resize;
