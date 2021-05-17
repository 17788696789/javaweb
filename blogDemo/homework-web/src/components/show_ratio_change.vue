<!-- 展示数据变化 -->
<template>
  <div id="show_ratio_change">
      <div id="first" class="block_module" style="border-right: 1px solid rgba(0,0,0,0.6);border-bottom: 1px solid rgba(0,0,0,0.6)"></div>
      <div id="second" class="block_module" style="border-right: 1px solid rgba(0,0,0,0.6);border-bottom: 1px solid rgba(0,0,0,0.6)"></div>
      <div id="third" class="block_module" style="border-bottom: 1px solid rgba(0,0,0,0.6)"></div>
      <div id="forth" class="block_module" style="border-right: 1px solid rgba(0,0,0,0.6)"></div>
      <div id="fifth" class="block_module" style="border-right: 1px solid rgba(0,0,0,0.6)"></div>
      <div id="sixth" class="block_module"></div>
  </div>
</template>

<script>
export default {
  data () {
    return {
        message:""
    };
  },

  components: {},

  computed: {},

  mounted(){
      this.$axios
      .get('/api/flower_point/')
      .then(response => {
          console.log(response.data)
          this.message = response.data
          this.showPic()
        })
  },

  methods: {
    showPic(){
        let _this = this
        let chartDom1 = document.getElementById("first");
        let chartDom2 = document.getElementById("second");
        let chartDom3 = document.getElementById("third");
        let chartDom4 = document.getElementById("forth");
        let chartDom5 = document.getElementById("fifth");
        let chartDom6 = document.getElementById("sixth");
        let myChart1 = this.$echarts.init(chartDom1);
        let myChart2 = this.$echarts.init(chartDom2);
        let myChart3 = this.$echarts.init(chartDom3);
        let myChart4 = this.$echarts.init(chartDom4);
        let myChart5 = this.$echarts.init(chartDom5);
        let myChart6 = this.$echarts.init(chartDom6);
        let option1;
        let option2;
        let option3;
        let option4;
        let option5;
        let option6;
        option1 = {
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            title: {
                text: '花瓣长度和花瓣宽度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            series: [{
                  symbolSize: 5,
                  data: _this.message.petall_petalw.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {
                  symbolSize: 5,
                  data: _this.message.petall_petalw.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.petall_petalw.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        option2 = {
            title: {
                text: '花萼长度和花瓣长度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            series: [{
                  symbolSize: 5,
                  data: _this.message.sepall_petall.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {     
                  symbolSize: 5,
                  data: _this.message.sepall_petall.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.sepall_petall.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        option3 = {
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            title: {
                text: '花萼长度和花瓣宽度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            series: [{
                  symbolSize: 5,
                  data: _this.message.sepall_petalw.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {
                  symbolSize: 5,
                  data: _this.message.sepall_petalw.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.sepall_petalw.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        option4 = {
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            title: {
                text: '花萼长度和花萼宽度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            series: [{
                  symbolSize: 5,
                  data: _this.message.sepall_sepalw.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {
                  symbolSize: 5,
                  data: _this.message.sepall_sepalw.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.sepall_sepalw.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        option5 = {
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            title: {
                text: '花萼宽度和花瓣长度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            series: [{
                  symbolSize: 5,
                  data: _this.message.sepalw_petall.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {
                  symbolSize: 5,
                  data: _this.message.sepalw_petall.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.sepalw_petall.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        option6 = {
            legend: {
                data: ['setosa', 'versicolor', 'virginica'],
                left: 'center',
                bottom: 10
            },
            title: {
                text: '花萼宽度和花瓣宽度对花朵种类的影响',
                subtext: '数据来源：全部样本'
            },
            xAxis: {},
            yAxis: {},
            series: [{
                  symbolSize: 5,
                  data: _this.message.sepalw_petalw.setosa,
                  type: 'scatter',
                  name: "setosa"
              },
              {
                  symbolSize: 5,
                  data: _this.message.sepalw_petalw.versicolor,
                  type: 'scatter',
                  name: "versicolor"
              },
               {
                  symbolSize: 5,
                  data: _this.message.sepalw_petalw.virginica,
                  type: 'scatter',
                  name: "virginica"
            }]
        };
        myChart1.setOption(option1);
        myChart2.setOption(option2);
        myChart3.setOption(option3);
        myChart4.setOption(option4);
        myChart5.setOption(option5);
        myChart6.setOption(option6);
    }
  }
}

</script>
<style lang='scss' src="@/assets/show_ratio_change.scss" scoped>
</style>