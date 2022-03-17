# PanIndex-heroku
[![](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/libsgh/PanIndex-heroku.git)

### 说明
- 如果想指定版本，请设置`PAN_INDEX_VERSION`，为空将使用Release最新版。
- `PanIndex-heroku`默认使用postgres数据库，创建App时已自动添加该组件，数据库免费只能保存1w条记录
  - 文件比较少，推荐选择**完全缓存策略**
  - 文件数大于1w，可以使用命中**缓存策略**
- 防止Heroku休眠：https://uptimerobot.com/ ， 定时每5分钟访问一次
- v3:由于配置保存在postgres中，重启不会导致配置丢失
### 相关
[PanIndex](https://github.com/libsgh/PanIndex)