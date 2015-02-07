.class public Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;
.super Ljava/lang/Object;
.source "ReceiverUpdateMonitor.java"


# static fields
.field private static final ACTION_SAMRTFACE_STATE_CHANGED:Ljava/lang/String; = "com.nubia.smartface.state.changed"

.field private static final APP_IS_DIEPLAY_KEY:Ljava/lang/String; = "display"

.field private static final APP_PKGNAME_KEY:Ljava/lang/String; = "packageName"

.field private static final DEBUG:Z = false

.field private static final MSG_PHONE_STATE_CHANGED:I = 0xa

.field private static final MSG_SMART_FACE_STATE_CHANGED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReceiverUpdateMonitor"


# instance fields
.field private cbHandler:Landroid/os/Handler;

.field private filter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneState:I

.field mSmartfaceAppNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "mContext"
    .parameter "handler"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mPhoneState:I

    .line 34
    new-instance v0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->initReceiver()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->putAppViewMap(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->handleSmartFaceViewStateChanged()V

    return-void
.end method

.method private dismissSmartFaceMain()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method private handleSmartFaceViewStateChanged()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->dismissSmartFaceMain()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->setNeedTurnOffScreen(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->setNeedTurnOffScreen(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->showSmartFaceMain()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->dismissSmartFaceMain()V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.nubia.smartface.state.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private putAppViewMap(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pkgName"
    .parameter "show"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 4
    .parameter "isNeed"

    .prologue
    const/16 v3, 0x11

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    const-string v2, "true"

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    const-string v2, "false"

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showSmartFaceMain()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method


# virtual methods
.method public getPhoneState()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    .line 116
    const/4 v1, -0x1

    .line 117
    .local v1, mPhoneState:I
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const/4 v1, 0x0

    .line 126
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->setNeedTurnOffScreen(Z)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->showSmartFaceMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 120
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const/4 v1, 0x2

    goto :goto_0

    .line 122
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->dismissSmartFaceMain()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_5
    if-ne v1, v3, :cond_1

    .line 136
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->setNeedTurnOffScreen(Z)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->dismissSmartFaceMain()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public isOtherSmartViewShow()Z
    .locals 5

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    .local v0, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 197
    .local v3, temp:Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 202
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #temp:Z
    :cond_3
    return v2
.end method

.method public register()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    :cond_0
    return-void
.end method
