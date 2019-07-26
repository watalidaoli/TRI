# TRI
项目名称：Triangle电影

项目地址：https://triangle.applinzi.com/ 

Git 仓库：https://github.com/watalidaoli/Tri

项目技术：CSS3+DOM+BOM+sessionStorage+SQL+Ajax

项目介绍：triangle电影是一个主打电影订票的生活类网站，展示热门电影，供用户浏览喜欢的电影选座订票等

功能描述：
  1. 主页采用经典轮播图+侧边栏布局, 基本纯原生实现页面动画效果等；
  2. 登录注册功能使用正则验证, 并使用promise处理异步请求顺序执行等；
  3. 页面电影等数据使用ajax请求并动态绑定, 并解决异步程序顺序执行；
  4. 多页面实现传参获取, 并使用sessionStorage选择显示不同的提示；
  5. 页面重复结构封装成独立文件并复用, 文件结构清晰分明；
  6. 订座界面使用自定义属性传参, 以及使用循环创建大量重复片段一次性添加至页面...

服务器：

根据设计的数据库和页面需要的数据内容设计接口

   /movies 全部电影数据
   
   /moviesItem 单个电影数据
   
   /cinema 影院数据
   
   /login 登录 ...
   
数据库：

考虑到订票业务中涉及的数据查询，构建数据库

   用户表 tri_user(用户id 姓名 密码 手机 ...) 
   
   电影表 tri_movie(电影标题 价格 信息 详情 图片...)
   
   影院表 tri_cinema(影院名称 场次 ...)
   
   订单表 tri_cart(对应用户id 对应电影id 价格 数量 ...)

   
页面说明：

  index：项目主页
  轮播图 侧边栏 下拉菜单 ...
  
  login/register：登录注册界面
  页面完成大部分验证功能 符合要求才允提交
  使用promise处理异步程序顺序执行 ... 
  
  这些页面负责将丰富的电影展示给用户
  
  detail 电影的详细列表
  movie 单个电影信息的预览
  cinema 结合影院信息并显示场次 ...
  
  order：选座页面
  选座交互效果完备 并添加验证功能，通过才可提交
  
  shop：付款页面
  根据选择的座位和电影信息计算价格并显示，弹出付款完成后清空本次订票列表
  超时将不再允许执行 ...

