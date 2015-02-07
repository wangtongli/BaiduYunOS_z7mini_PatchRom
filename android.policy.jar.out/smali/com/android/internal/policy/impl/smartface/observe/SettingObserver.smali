.class public abstract Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserver.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "mContext"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    .line 15
    iput-object p2, p0, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract observe()V
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;->update()V

    .line 21
    return-void
.end method

.method protected abstract update()V
.end method
