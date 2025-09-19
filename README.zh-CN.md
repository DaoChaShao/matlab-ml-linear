<p align="right">
  Language Switch / 语言选择：
  <a href="./README.zh-CN.md">🇨🇳 中文</a> | <a href="./README.md">🇬🇧 English</a>
</p>

**应用简介**
---
该 MATLAB 应用提供了一个交互式环境，用于对数据集进行线性回归分析。用户可以加载数据、划分训练集与测试集、训练线性模型，并可视化预测结果与残差。该应用既适合教学，也适合快速验证回归模型的实验。

**特色功能**
---
- **数据管理**：方便地加载、查看和清空数据集。  
- **训练/测试集划分**：可自定义训练集比例和随机种子，实现可重复实验。  
- **线性模型训练**：拟合线性回归模型，并显示关键统计指标，包括 RMSE、R²、调整后的 R²、F 统计量和 p 值。  
- **显著系数展示**：识别统计显著的预测变量，并在专门的表格中显示。  
- **预测与评估**：在测试集上验证模型，并提供训练集和测试集的 MAE、MSE、RMSE 和 R² 等指标。  
- **可视化**：提供训练集和测试集的真实值与预测值对比图，以及残差图。  
- **用户交互**：通过按钮实现数据加载、训练、测试、重置及退出应用。

**数据描述**
---
本应用使用的示例数据集主要用于汽车性能预测。数据集包含以下特征：

- **Cylinders**: 汽车的气缸数量  
- **Displacement**: 发动机排量  
- **Horsepower**: 马力  
- **Weight**: 车辆重量  
- **Acceleration**: 加速度  
- **Model_Year**: 车型年份  
- **MPG**: 油耗（Miles Per Gallon），作为目标变量  

数据集的特点：
- 含有连续数值型特征和离散数值型特征  
- 样本量适中，适合用于线性回归建模和训练/测试模型的演示  

**如何加载（MATLAB）**
---
```matlab
% 在 MATLAB 中加载 'carbig' 数据集
load carbig
% 数据集包含以下变量：
% Cylinders, Displacement, Horsepower, Weight, Acceleration, Model_Year, MPG
% 示例：查看前 10 行的 Horsepower 和 MPG
Horsepower(1:10)
MPG(1:10)
```

**许可协议**
---
本应用基于 **BSD-3-Clause 许可证** 开源发布。您可以点击链接阅读完整协议内容：👉 [BSD-3-Clause License](./LICENSE)。  

**MATLAB 中使用 GIT**
---

1. **创建新文件夹**  
在电脑上为你的 MATLAB 项目创建一个文件夹，该文件夹将作为 Git 仓库的根目录。
2. **初始化本地仓库**  
在 MATLAB 中运行命令 `repo = gitinit("repoName")` 来初始化本地仓库。可以使用 `status(repo)` 查看仓库状态。
3. **添加新文件**  
对项目中新创建的文件，点击 **添加到源代码管理**。然后使用合适的提交信息进行提交（commit）。
4. **分享到 GitHub**  
在 MATLAB 中，进入 **源代码管理 (Source Control)** 标签页，点击 **分享到 GitHub (Share to GitHub)**。按照提示在 GitHub 上创建对应的仓库。
5. **推送到 GitHub**  
点击 **Push** 将本地提交上传到 GitHub 仓库。
6. **认证**  
输入 GitHub 用户名和密码，或使用个人访问令牌（Personal Access Token, PAT）进行认证。

**在 MATLAB 中集成 Python**
---
1. 运行命令 `pyenv` 来检查 Python 版本，并确认 MATLAB 是否可用 Python。  
2. 如果 Python 可用，你可以调用 **Python 文件** 中的函数。  
3. 调用 Python 文件中定义的函数，使用语法：  
   ```matlab
   py.[模块名].[函数名]
4. 如果你在 Python 文件中**添加了新函数**，必须重新运行 MATLAB 软件。  
5. 如果**不**运行该命令，MATLAB 在调用更新后的函数时可能会**报错**。

