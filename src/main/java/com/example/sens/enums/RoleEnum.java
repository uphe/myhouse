package com.example.sens.enums;

/**
 * <pre>
 *     角色枚举
 * </pre>
 */
public enum RoleEnum {

    /**
     * 管理员
     */
    ADMIN("admin"),

    /**
     * 房东
     */
    OWNER("owner"),

    /**
     * 租客
     */
    CUSTOMER("customer");

    private String value;

    RoleEnum(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
