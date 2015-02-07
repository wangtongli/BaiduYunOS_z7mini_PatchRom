.class public Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;
.super Ljava/lang/Object;
.source "SysSettingsUtils.java"


# static fields
.field private static final AUTO_FINGER_MODE_FUNCTION_ENABLE:Ljava/lang/String; = "sensitive_touch"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final MAX_BRIGHTNESS:I = 0xff

.field public static final SMARTFACE_DISPLAY_ENABLE:Ljava/lang/String; = "smart_face_display"

.field public static final SMARTFACE_FUNCTION_ENABLE:Ljava/lang/String; = "smart_face_function_enable"

.field public static final SMARTFACE_OPEN_UNLOCK_SCREEN:Ljava/lang/String; = "smart_face_open_unlock_screen"

.field public static final SMARTFACE_WINDOW_ENABLE:Ljava/lang/String; = "smart_face_window"

.field private static final TAG:Ljava/lang/String; = "SysSettingsManager"

.field private static mIsSingleUIEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealSingleUI(Landroid/content/Context;I)V
    .locals 1
    .parameter "mContext"
    .parameter "isEnable"

    .prologue
    .line 123
    sget-boolean v0, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->mIsSingleUIEnable:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setSingleUiMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static disableHapticFeedback(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBrightnessMode(Landroid/content/Context;)I
    .locals 4
    .parameter "mContext"

    .prologue
    .line 97
    const/4 v0, 0x1

    .line 99
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "get brightness mode failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSysScreenBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "mContext"

    .prologue
    .line 81
    const/16 v1, 0xff

    .line 83
    .local v1, screenBrightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "get system brightness failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isAutoFingerEnable(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sensitive_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOpenUnLockFunctionEnable(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_open_unlock_screen"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleUIFunctionEnable(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartFaceEnable(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_display"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartFaceFuncEnable(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_function_enable"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartFaceWindowEnable(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_face_window"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRotationScreen(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBrightnessMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "brightnessMode"

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SysSettingsManager"

    const-string v2, "setBrightnessMode mode failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSingleUiMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 135
    return-void
.end method

.method public static setSmartFaceDisplayFlag(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "flag"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_face_display"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 36
    return-void
.end method

.method public static setSysScreenBrightness(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "brightness"

    .prologue
    .line 70
    :try_start_0
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SysSettingsManager"

    const-string v3, "setSysScreenBrightness  failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateSingleUIFunction(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSingleUIFunctionEnable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->mIsSingleUIEnable:Z

    .line 120
    return-void
.end method
