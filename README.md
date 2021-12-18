# 为GL.iNet SFT1200路由器原厂系统一键安装上网插件

## 安装

- 安装passwall和ssr-plus

  `wget -qO- https://cdn.jsdelivr.net/gh/ericwang2006/sft1200_buddha/install.sh | sh`

- 只安装passwall

  `wget -qO- https://cdn.jsdelivr.net/gh/ericwang2006/sft1200_buddha/install.sh | sh -s passwall`

- 只安装ssr-plus
  `wget -qO- https://cdn.jsdelivr.net/gh/ericwang2006/sft1200_buddha/install.sh | sh -s ssr-plus`

## 特别说明
- 生成ipk索引的方法

    ```bash
    ipkg-make-index.sh . 2>&1 > Packages
    gzip -9c Packages > Packages.gz
    ```

- 特别感谢zheshifandian，本项目所有ipk都是从他的[代码](https://github.com/zheshifandian/gl-infra-builder)编译得到


