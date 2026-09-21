# dotfiles

个人开发环境配置文件集合。跨机器保持一致的基础配置。

## 包含内容

| 文件 | 说明 |
|------|------|
| `.gitignore` | 通用忽略规则（OS / 编辑器 / Python / Node / 密钥） |
| `.editorconfig` | 跨编辑器统一的编码与缩进规范 |
| `aliases.sh` | 常用 shell 别名与实用函数（`ff` 查找、`port` 查端口、`extract` 解压） |

## 使用方法

```bash
# 克隆到 home 目录
git clone https://github.com/c991china/dotfiles.git ~/.dotfiles

# 让 bash 每次启动自动加载别名
echo 'source ~/.dotfiles/aliases.sh' >> ~/.bashrc

# 编辑器自动读取 .editorconfig（主流编辑器原生支持，无需额外配置）
```

## 备注

- `.editorconfig` 被 VS Code、JetBrains 系列、Vim、Sublime 等主流编辑器原生识别。
- `aliases.sh` 仅对 bash/zsh 生效；zsh 用户可在 `.zshrc` 中同样 `source` 它。
