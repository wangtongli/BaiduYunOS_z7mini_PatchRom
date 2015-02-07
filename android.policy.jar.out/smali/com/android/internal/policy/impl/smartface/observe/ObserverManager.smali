.class public Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "mContext"
    .parameter "mHandler"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    .line 18
    new-instance v1, Lcom/android/internal/policy/impl/smartface/observe/SensitiveTouchObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/smartface/observe/SensitiveTouchObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 20
    .local v1, mSensitiveTouchObserver:Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;
    new-instance v0, Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 22
    .local v0, mSFFuncObservernew:Lcom/android/internal/policy/impl/smartface/observe/SettingObserver;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/smartface/observe/SensitiveTouchObserver;->observe()V

    .line 23
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/observe/SFFuncObserver;->observe()V

    .line 24
    return-void
.end method
