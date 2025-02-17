package com.group.c.hackaton.web.dto.responses;

import org.springframework.http.HttpStatus;

import java.util.HashMap;
import java.util.Map;

public class RestResponse {
    public static Map<Object,Object> paginateResponse(Object results, Object pages, Object currentPage, Object totalItems, Object totalPages, HttpStatus status) {
        Map<Object, Object>  reponse=new HashMap<Object, Object>();
        reponse.put("status",status.value());
        reponse.put("data",results);
        reponse.put("pages",pages);
        reponse.put("currentPage",currentPage);
        reponse.put("totalItems",totalItems);
        reponse.put("totalPages",totalPages);
        return reponse;
    }

    public static Map<Object,Object> toSingleResponse(Object results, HttpStatus status) {
        Map<Object, Object>  reponse=new HashMap<Object, Object>();
        reponse.put("status",status.value());
        reponse.put("data",results);
        return reponse;
    }
}
