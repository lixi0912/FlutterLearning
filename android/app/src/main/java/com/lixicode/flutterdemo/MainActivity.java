package com.lixicode.flutterdemo;

import android.net.Uri;
import android.os.Bundle;

import com.taobao.hybridstackmanager.XURLRouter;
import com.taobao.hybridstackmanager.XURLRouterHandler;

import java.util.HashMap;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity implements XURLRouterHandler {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        XURLRouter.sharedInstance().setAppContext(getApplicationContext());
        XURLRouter.sharedInstance().setNativeRouterHandler(this);

    }

    @Override
    public Class openUrlWithQueryAndParams(String url, HashMap query, HashMap params) {
        Uri tmpUri = Uri.parse(url);
        if ("ndemo".equals(tmpUri.getHost())) {
            return XDemoActivity.class;
        }
        return null;
    }

}
