<!-- 展示变化曲线 -->
<template>
  <div id="show_point">
      <div id="line1" class="block_line"></div>
      <div id="pane1" class="block_pane"></div>
      <div id="line2" class="block_line"></div>
      <div id="pane2" class="block_pane"></div>
      <!-- <div id="line3" class="block_line"></div> -->
      <!-- <div id="pane3" class="block_pane"></div> -->
  </div>
</template>

<script>
export default {
  data () {
    return {
        message:"",
        index1: 4,
        index2: 5,
        index3: 8,
        optMessage:""
    };
  },

  components: {},

  computed: {},

  mounted(){
      let _this = this
      this.$axios
      .get('/api/flower_change/',{
          params:{
              index1: _this.index1,
              index2: _this.index2,
              index3: _this.index3,
          }
      })
      .then(response => {
          console.log(response.data)
          _this.message = response.data
          _this.showPic()
        })
  },

  methods: {
      showPic(){
        let _this = this
        var chartDomline1 = document.getElementById('line1');
        var chartDomline2 = document.getElementById('line2');
        // var chartDomline3 = document.getElementById('line3');
        var myChartline1 = this.$echarts.init(chartDomline1);
        var myChartline2 = this.$echarts.init(chartDomline2);
        // var myChartline3 = this.$echarts.init(chartDomline3);
        var optionline1;
        var optionline2;
        var optionline3;
        optionline1 = {
            title: {
                text: 'K值为'+_this.index1+'时的准确度(百分比)'+_this.optMessage,
                subtext: '数据来源：Iris随机生成测试集'
            },
            xAxis: {
                type: 'category',
                data: ['1', '2', '3', '4', '5', '6', '7','8', '9', '10',
                 '11', '12', '13', '14','15', '16', '17', '18', '19', '20',
                 '21', '22', '23', '24', '25', '26', '27','28','29','30',
                 '31', '32', '33', '34', '35', '36', '37','38','39','40',
                ,'41', '42', '43', '44', '45', '46', '47','48','49','50']
            },
            yAxis: {
                type: 'value'
            },
            series: [
            {
                data: _this.message.data1,
                type: 'line',
                itemStyle : {
					normal : {
						lineStyle:{
							// color:'#e39e4c'
						}
					}
				}
            }
            ]
        };
        optionline2 = {
            title: {
                text: 'K值为'+_this.index2+'时的准确度(百分比)'+_this.optMessage,
                subtext: '数据来源：Iris随机生成测试集'
            },
            xAxis: {
                type: 'category',
                data: ['1', '2', '3', '4', '5', '6', '7','8', '9', '10',
                 '11', '12', '13', '14','15', '16', '17', '18', '19', '20',
                 '21', '22', '23', '24', '25', '26', '27','28','29','30',
                 '31', '32', '33', '34', '35', '36', '37','38','39','40',
                ,'41', '42', '43', '44', '45', '46', '47','48','49','50']
            },
            yAxis: {
                type: 'value'
            },
            series: [
            {
                data: _this.message.data2,
                type: 'line',
                itemStyle : {
					normal : {
						lineStyle:{
							// color:'#e39e4c'
						}
					}
				}
            }
            ]
        };
        optionline3 = {
            title: {
                text: 'K值为8时的准确度(百分比)',
                subtext: '数据来源：Iris随机生成测试集'
            },
            xAxis: {
                type: 'category',
                data: ['1','2','3','4','5','6','7','8','9','10',
                 '11','12','13','14','15','16','17','18','19','20',
                 '21','22','23','24','25','26','27','28','29','30',
                 '31','32','33','34','35','36','37','38','39','40',
                ,'41','42','43','44','45','46','47','48','49','50']
            },
            yAxis: {
                type: 'value'
            },
            series: [
            {
                data: _this.message.data3,
                type: 'line'
            }
            ]
        };
        myChartline1.setOption(optionline1);
        myChartline2.setOption(optionline2);
        // myChartline3.setOption(optionline3);
        var chartDompane1 = document.getElementById('pane1');
        var chartDompane2 = document.getElementById('pane2');
        // var chartDompane3 = document.getElementById('pane3');
        var myChartpane1 = this.$echarts.init(chartDompane1);
        var myChartpane2 = this.$echarts.init(chartDompane2);
        // var myChartpane3 = this.$echarts.init(chartDompane3);
        var optionpane1;
        var optionpane2;
        var optionpane3;
        optionpane1 = {
            title: {
                text: '50次执行K为'+_this.index1+'时总的分类正确率(百分比)'+_this.optMessage,
                subtext: '数据来源：Iris随机生成测试集'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '13%',
                left: 'center'
            },
            series: [
                {
                    top: '5%',
                    name: '分类结果',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                        // {value: (_this.message.errNum1)/(50*15) * 100 , name: '错误分类', itemStyle: { color: '#e3934c' }},
                        {value: (_this.message.errNum1)/(50*15) * 100 , name: '错误分类'},
                        {value: (50*15 - _this.message.errNum1)/(50*15) * 100 , name: '正确分类'}
                    ]
                }
            ]
        };
        optionpane2 = {
            title: {
                text: '50次执行K为'+_this.index2+'时总的分类正确率(百分比)'+_this.optMessage,
                subtext: '数据来源：Iris随机生成测试集'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '13%',
                left: 'center'
            },
            series: [
                {
                    top: '5%',
                    name: '分类结果',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                        // {value: (_this.message.errNum2)/(50*15) * 100 , name: '错误分类', itemStyle: { color: '#e3934c' }},
                        {value: (_this.message.errNum2)/(50*15) * 100 , name: '错误分类'},
                        {value: (50*15 - _this.message.errNum2)/(50*15) * 100 , name: '正确分类'}
                    ]
                }
            ]
        };
        optionpane3 = {
            title: {
                text: '50次执行K为8时总的分类错误次数',
                subtext: '数据来源：Iris随机生成测试集'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            series: [
                {
                    name: '分类结果',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                        {value: (_this.message.errNum2)/50*15, name: '错误分类'},
                        {value: (50*15 - _this.message.errNum2)/50*50, name: '正确分类'}
                    ]
                }
            ]
        };
        myChartpane1.setOption(optionpane1);
        myChartpane2.setOption(optionpane2);
        // myChartpane3.setOption(optionpane3);
        
      }
  }
}

</script>
<style lang='scss' src="@/assets/show_point.scss" scoped>
</style>