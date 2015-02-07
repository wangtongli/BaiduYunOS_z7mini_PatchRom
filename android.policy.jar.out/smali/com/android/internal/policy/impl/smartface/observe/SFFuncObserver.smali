.class public Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;
.super Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;
.source "SFFuncObserver.java"


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "mContext"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 14
    const-string v0, "smart_face_function_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;->mUri:Landroid/net/Uri;

    .line 19
    return-void
.end method


# virtual methods
.method protected observe()V
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    return-void
.end method

.method protected update()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    .line 23
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v0

    .line 25
    .local v0, enableFunction:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void
.end method
