本README是由生成AI从日语版README翻译而来的。

# **MeDeX**



## **[关于本项目]**
- 本应用旨在用于医院等机构的患者数据管理等目的。
- 本项目主要由两个应用组成。
- 分别为Mac端应用和iOS端应用。
- 希望本项目对您有所帮助！


## **[应用功能]**
### **(macOS 应用)**
- 院内服务器的设置也计划在macOS版应用中实现。
- 管理员和医生拥有各自独立的登录界面。
- 管理员界面
    1. 医生数据管理（添加、编辑姓名、密码、科室）
    2. 患者数据管理（编辑姓名、密码）
    3. 管理员数据管理（添加、编辑姓名、密码）
    4. 科室管理（添加、编辑、删除科室）
    5. 网络设置（编辑服务器信息）
- 医生界面
    1. 今日患者一览（当天就诊患者的列表界面）
    2. 所有患者一览（所有患者的列表界面）
    - 患者的个人信息和病历（诊疗记录）可以从任意界面进行访问。
    - 备有用于创建病历的界面。

### **(iOS 应用)**
- 医生和患者拥有各自独立的登录界面。
- 医生界面
    - 与macOS版相同的功能。
- 患者界面
    1. 添加姓名、密码、个人信息。
    2. 创建预约。
    3. 就诊前的问诊填写。


## **[已知问题与期望功能]**
**此问题与期望功能列表将在下次发布后重置。**
- [x] iOS版应用的完成。
- [ ] 从列表中搜索医生和患者。
- [ ] 构建使用服务器的局域网内数据共享系统设置。
- [ ] 实现Foundation Models Framework以辅助病历录入。
- [ ] 实现MedGemma以协助发现诊断过程中可能遗漏的情况。
- [ ] 引入预约DatePicker。（允许根据管理员和医生的设置以及其他预约来确认空闲时间）
- [ ] 在问诊表中添加症状列表（iOS应用）。
- [ ] 


## **[各应用项目分支链接]**
**:warning:重要**

**MeDeX不再拆分为各个独立分支，已整合至`main`分支。** 

**以下链接的分支目前已不再使用，仅作为存档保存。**
- 点击[此处](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-iOS-App)访问iOS应用分支。
- 点击[此处](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-macOS-App)访问Mac应用分支。
- 点击[此处](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-Data-Manager-(Swift-Package))访问用于多设备间数据管理的Swift Package分支。


## **[各项目README文件链接：全英文]**
- 点击[此处](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20Mac%20App/README%20for%20Mac%20App.EN.md)访问Mac应用的README文件。
- 点击[此处](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20iOS%20App/README%20for%20iOS%20App.EN.md)访问iOS应用的README文件。
- **Swift Package Data Manager的README文件尚未创建。如有需要将进行创建。**


## **[参考]**
- ChatGPT: [链接](https://chatgpt.com)

**非常感谢！**

## **[开发者留言]**
感谢您访问本仓库！
我是一名于2026年春季进入大学的学生。
目前我正在学习`Swift`，本项目是我的首个项目之一。
如果您能不将本项目据为己有或用于商业目的公开，我将不胜感激。
未来我可能会将此应用发布到App Store。
我在ChatGPT的支持下开发了这款应用，虽然遇到了各种各样的问题，但macOS应用的UI已经基本完成！
如果您在医疗行业工作并考虑使用本应用，请通过 gikou21doc@gmail.com 与我联系。
此外，非常欢迎开发者社区提出功能请求或错误/Bug报告！
不过由于我自己还是个初学者，可能无法给出修复方法。任何想法和建议对我来说都非常有帮助，如果您能在 Issues / Discussions 标签页中留下评论，我会非常高兴。
希望您能和我一样喜欢这款应用。祝各位开发者拥有美好的开发体验！


谢谢， 
KOUTAN-App-Builders


    MeDeX  © 2026 by KOUTAN-App-Builders is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/