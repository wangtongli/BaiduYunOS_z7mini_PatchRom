.class public Lcom/android/internal/policy/impl/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

.field private mFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

.field private mHandler:Landroid/os/Handler;

.field private mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

.field private mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

.field private mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

.field private needTurnOffScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 6
    .parameter "context"
    .parameter "windowManager"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Lcom/android/internal/policy/impl/SmartFaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SmartFaceManager$1;-><init>(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 118
    new-instance v1, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    .line 120
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-direct {v1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    .line 121
    new-instance v1, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mDelegate:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    .line 124
    new-instance v1, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    .line 127
    new-instance v1, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    .line 128
    new-instance v0, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 130
    .local v0, mObserverManager:Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/observe/ObserverManager;->observe()V

    .line 131
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->onResume()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SmartFaceManager;->controlSmartFaceFunc(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->showSmartFaceScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->dismissSmartFaceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SmartFaceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->needTurnOffScreen:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SmartFaceManager;->turnOffScreen(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SmartFaceManager;->setNeedTurnOffScreen(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->notifyScreenOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SmartFaceManager;->updateRotation(Z)V

    return-void
.end method

.method private controlSmartFaceFunc(Z)V
    .locals 1
    .parameter "needRun"

    .prologue
    .line 135
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->onResume()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartFaceManager;->onStop()V

    goto :goto_0
.end method

.method private dismissSmartFaceScreen()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mDelegate:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->dismissSmartFaceView()V

    .line 98
    return-void
.end method

.method private notifyScreenOn()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->openUnLockScreen(Z)V

    .line 110
    return-void
.end method

.method private onResume()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->register()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 163
    return-void
.end method

.method private onStop()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->doOpenLeather()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->unRegister()V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->onStop()V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 174
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 0
    .parameter "isNeed"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->needTurnOffScreen:Z

    .line 106
    return-void
.end method

.method private setSmartFaceBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 184
    return-void
.end method

.method private showSmartFaceScreen()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mDelegate:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->showSmartFaceView()V

    .line 94
    return-void
.end method

.method private turnOffScreen(Z)V
    .locals 1
    .parameter "needTurnOffScreen"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->turnOffScreen(Z)V

    .line 102
    return-void
.end method

.method private updateRotation(Z)V
    .locals 1
    .parameter "oriention"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->updateRotation(Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public disableHapticFeedback()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->disableHapticFeedback(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 155
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 151
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public needRotationScreen()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->needRotationScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager;->mSensorManager:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->userActivity()V

    .line 198
    return-void
.end method
