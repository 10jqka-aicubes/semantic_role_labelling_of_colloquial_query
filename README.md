# 【9-10双月赛】高度口语化问句的语义角色标注

​	投顾业务的传统模式需要人类投资顾问，基于历史数据和经验，为顾客提供服务。然而，较高的人力成本、个人对数据解读的主观性，对这一行业的发展造成了阻碍。由于大部分的投顾咨询内容具有标准化的答案，因此可以借助自然语言解析技术对用户问句的结构、成分及成分之间的关系进行分析，以减少人类投资顾问在一些简单咨询中的参与，规模化地服务于顾客，从而释放投顾行业发展的巨大潜力。当下主流的自然语言解析技术依然面临着诸多挑战：需要依赖大量标注文本进行训练；复杂语句中多成分间关系识别；口语化场景下大量的缩写、倒装等非标准化表达的识别等等。

- 本代码是该赛题的一个基础demo，仅供参考学习。


- 比赛地址：http://contest.aicubes.cn/	


- 时间：2021-09 ~ 2021-10



## 如何运行Demo

- clone代码


- 准备预训练模型

  - 下载模型 [chinese-bert](https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip)，单独放在一个目录下

- 准备环境

  - cuda9.0以上
  - python3.6以上
  - 安装python依赖

  ```
  python -m pip install -r requirements.txt
  ```

- 准备数据，从[官网](http://contest.aicubes.cn/#/detail?topicId=33)下载数据

  - 训练数据`train_res`，放在训练数据目录中
  - 预测数据`test_res` ，放在预测目录下

- 调整参数配置，参考[模板项目](https://github.com/10jqka-aicubes/project-demo)的说明

  - `semantic_role_labelling_of_colloquial_query/setting.conf`
  - 其他注意下`run.sh`里使用的参数，包括预训练模型的路径

- 运行

  - 训练

  ```
  bash semantic_role_labelling_of_colloquial_query/train/run.sh
  ```

  - 预测

  ```
  bash semantic_role_labelling_of_colloquial_query/predict/run.sh
  ```

  - 计算结果指标

  ```
  bash semantic_role_labelling_of_colloquial_query/metrics/run.sh
  ```



## 反作弊声明

1）参与者不允许在比赛中抄袭他人作品、使用多个小号，经发现将取消成绩；

2）参与者禁止在指定考核技术能力的范围外利用规则漏洞或技术漏洞等途径提高成绩排名，经发现将取消成绩；

3）在A榜中，若主办方认为排行榜成绩异常，需要参赛队伍配合给出可复现的代码。



## 赛事交流

![同花顺比赛小助手](http://speech.10jqka.com.cn/arthmetic_operation/245984a4c8b34111a79a5151d5cd6024/客服微信.JPEG)
