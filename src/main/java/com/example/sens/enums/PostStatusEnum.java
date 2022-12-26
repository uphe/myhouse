package com.example.sens.enums;

/**
 * <pre>
 *     房屋状态enum
 * </pre>
 *
 */
public enum PostStatusEnum {

    /**
     * 正在出租
     */
    ON_SALE(0),

    /**
     * 已出租
     */
    OFF_SALE(1),

    /**
     * 已删除
     */
    RECYCLE(2);

    private Integer code;

    PostStatusEnum(Integer code) {
        this.code = code;
    }

    public Integer getCode() {
        return code;
    }

}
