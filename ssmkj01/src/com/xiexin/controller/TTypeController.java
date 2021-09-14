package com.xiexin.controller;

import com.xiexin.entity.TType;
import com.xiexin.service.TTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class TTypeController {
    @Autowired
    private TTypeService tTypeService;
    //要去写一个  全查的 数据接口给前端 下拉框使用  对应的全查
    //注意 给数据，直接 用json 不在 转发 和 el/jstl表达式
    @RequestMapping("/selectAll")
    @ResponseBody
    public Map selectAll(){
        //调用service层....
        List<TType> tTypes = tTypeService.selectByExample(null);
        Map codeMap = new HashMap();
        codeMap.put("code",0);
        codeMap.put("data",tTypes);
        return codeMap;
    }
}
