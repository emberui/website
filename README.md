# EmberUI Website

The website for the EmberUI project residing at [http://emberui.com](http://emberui.com).

### Contributing

To get started:

you should have both `broccoli`, `bower` and `grunt` installed globally

``` sh
npm install -g gruntcli
npm install -g bower
npm install -g broccoli
```


``` sh
git clone git@github.com:emberui/emberui.git
cd emberui
npm install
broccoli build
```

then on a separate terminal

``` sh
git clone git@github.com:emberui/website.git
cd website
npm install
grunt server
```

Then visit [http://localhost:8000/](http://localhost:8000/)
