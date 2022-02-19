package com.github.hlam.web.rest;

import java.util.UUID;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MetaController {
    private final String instanceId;

    public MetaController() {
        String id = System.getenv("INSTANCE_ID");
        this.instanceId = id == null ? "(v2) -> generated:" + UUID.randomUUID() : id;
    }

    @GetMapping("/")
    public String getServiceApplicationId() {
        return instanceId;
    }

    @GetMapping("/health")
    public String health() {
        return "OK";
    }

}
