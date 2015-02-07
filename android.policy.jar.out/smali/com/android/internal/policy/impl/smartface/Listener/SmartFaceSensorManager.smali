.class public Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;
.super Ljava/lang/Object;
.source "SmartFaceSensorManager.java"


# static fields
.field private static final DISABLE_SINGLE_UI:I = 0x0

.field private static final ENABLE_SINGLE_UI:I = 0x1

.field private static final KEEP_SCREEN_ON_TIME:J = 0x3e8L

.field private static final SMART_FACE_FAR:I = 0x2

.field private static final SMART_FACE_NEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartFaceSensorManager"


# instance fields
.field private isScreenOnByPerson:Z

.field private mBrightness:I

.field private mBrightnessMode:I

.field private mContext:Landroid/content/Context;

.field private mEnableepMode:Z

.field private mEverSmratNearFlag:Z

.field private mHallSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

.field private mSensorEventLister:Landroid/hardware/SensorEventListener;

.field private mSmartFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

.field private mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

.field private pendingSensorState:F

.field private sensorManager:Landroid/hardware/SensorManager;

.field private triggerUnLockFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;)V
    .locals 2
    .parameter "mContext"
    .parameter "mReceiverUpdateMonitor"
    .parameter "mHandler"
    .parameter "mWapper"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isScreenOnByPerson:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEnableepMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerUnLockFlag:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEverSmratNearFlag:Z

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;-><init>(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p4, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    .line 96
    iput-object p2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSmartFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    .line 97
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    const v1, 0x961901

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHallSensor:Landroid/hardware/Sensor;

    .line 101
    invoke-static {p1}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->pendingSensorState:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->pendingSensorState:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->doCloseLeather()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceDisplayFlag(Z)V

    return-void
.end method

.method private adjustBrightness(Z)V
    .locals 2
    .parameter "near"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEnableepMode:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    if-eqz p1, :cond_2

    .line 207
    iget v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mBrightnessMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setBrightnessMode(Landroid/content/Context;I)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setSysScreenBrightness(Landroid/content/Context;I)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->restoreBrightness()V

    goto :goto_0
.end method

.method private awaken()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->isScreenOn()Z

    move-result v0

    .line 229
    .local v0, isScreenOn:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerUnLockFlag:Z

    .line 233
    if-eqz v0, :cond_1

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->openUnLockScreen(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->userActivity()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->turnOnScreen()V

    goto :goto_0
.end method

.method private dismissSmartFaceMain()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method

.method private doCloseLeather()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSmartFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSmartFaceUpdateMonitor:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->showSmartFaceMain()V

    .line 123
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceDisplayFlagWallper(Z)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerPhoneWindowNear()V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->hasGloveFeather()Z

    move-result v0

    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 136
    :goto_0
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 137
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->hasGloveFeather()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 134
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->goToSleep(J)V

    goto :goto_0
.end method

.method private goToSleep(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/16 v2, 0xb

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->isScreenOn()Z

    move-result v0

    .line 260
    .local v0, isScreenOn:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :cond_0
    if-eqz v0, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    :cond_1
    return-void
.end method

.method private handleKeyguardDismiss(Z)V
    .locals 2
    .parameter "isScreenChange"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isOpenUnLockFunctionEnable(Landroid/content/Context;)Z

    move-result v0

    .line 274
    .local v0, dismissWhenLocked:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->dismissKeyguardLw()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isScreenOnByPerson:Z

    if-eqz v1, :cond_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->dismissKeyguardLw()V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isScreenOnByPerson:Z

    goto :goto_0
.end method

.method private hasGloveFeather()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.nubia.smartface.feature.glovemode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restoreBrightness()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mBrightnessMode:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setBrightnessMode(Landroid/content/Context;I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mBrightness:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setSysScreenBrightness(Landroid/content/Context;I)V

    .line 220
    const/16 v0, -0xff

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceBrightness(I)V

    .line 221
    return-void
.end method

.method private setSmartFaceBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 225
    return-void
.end method

.method private setSmartFaceDisplayFlag(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->updateSingleUIFunction(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->dealSingleUI(Landroid/content/Context;I)V

    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->updateSleepModeState()V

    .line 187
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->adjustBrightness(Z)V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->dealSingleUI(Landroid/content/Context;I)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->adjustBrightness(Z)V

    goto :goto_0
.end method

.method private setSmartFaceDisplayFlagWallper(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;-><init>(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method private showSmartFaceMain()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->goToSleep(J)V

    .line 148
    return-void
.end method

.method private triggerPhoneWindowNear()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEverSmratNearFlag:Z

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerUnLockFlag:Z

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method

.method private trrigerPhoneWindowFar()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method private updateSleepModeState()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isSleepMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEnableepMode:Z

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->getSysScreenBrightness(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mBrightness:I

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->getBrightnessMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mBrightnessMode:I

    .line 201
    return-void
.end method


# virtual methods
.method public doOpenLeather()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->awaken()V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->dismissSmartFaceMain()V

    .line 108
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceDisplayFlagWallper(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->trrigerPhoneWindowFar()V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 113
    invoke-static {v1}, Lcom/android/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 114
    return-void
.end method

.method public isSleepMode()Z
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lztemt/profilehelper/ProfileHelper;->getInstance(Landroid/content/Context;)Lztemt/profilehelper/ProfileHelper;

    move-result-object v0

    .line 309
    .local v0, profile:Lztemt/profilehelper/ProfileHelper;
    if-eqz v0, :cond_0

    sget-object v1, Lztemt/profilehelper/ProfileHelper$Scenario;->SLEEP:Lztemt/profilehelper/ProfileHelper$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profilehelper/ProfileHelper;->getProfileActive(Lztemt/profilehelper/ProfileHelper$Scenario;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHallSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHallSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    :cond_0
    return-void
.end method

.method public openUnLockScreen(Z)V
    .locals 2
    .parameter "isScreenChange"

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerUnLockFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mEverSmratNearFlag:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->handleKeyguardDismiss(Z)V

    .line 290
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isScreenOnByPerson:Z

    .line 294
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->triggerUnLockFlag:Z

    .line 295
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->isScreenOnByPerson:Z

    goto :goto_0
.end method

.method public turnOffScreen(Z)V
    .locals 1
    .parameter "needTurnOffScreen"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->goToSleep()V

    .line 246
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mPowerCtrl:Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartface/util/PowerCtrl;->userActivity()V

    .line 300
    return-void
.end method
