.class public Lcom/nubia/os/DefaultHaptics;
.super Ljava/lang/Object;
.source "DefaultHaptics.java"

# interfaces
.implements Lcom/nubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CLICK_BUTTON:Ljava/lang/Long; = null

.field private static final DEFAULT_CLICK_KEY:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long; = null

.field private static final DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long; = null

.field private static final DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long; = null

.field private static final DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long; = null

.field private static final NUBIA_HAPTICS_DEFAULT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private isPermissionOK:Z

.field private len:I

.field private mContext:Landroid/content/Context;

.field private mDefalut:[Ljava/lang/String;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    const-wide/16 v2, 0x28

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_CLICK_BUTTON:Ljava/lang/Long;

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_CLICK_KEY:Ljava/lang/Long;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long;

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long;

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long;

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long;

    .line 29
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long;

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long;

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long;

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long;

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long;

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long;

    .line 37
    const-string v0, "ro.nubia.haptics.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 43
    iput-boolean v2, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 47
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 48
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v3, "android.permission.VIBRATE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 43
    iput-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 61
    iput-object p1, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 63
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 69
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    .line 240
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, intValue:I
    iget-object v2, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/nubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 249
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-lez v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_CLICK_BUTTON:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "clickKey e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 91
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_CLICK_KEY:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-boolean v1, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v1, :cond_1

    const-string v1, "Permission Error!"

    invoke-direct {p0, v1}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0
.end method

.method public longPressBlank()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 167
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 171
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 153
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "longPressButton e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 158
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 139
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "longPressKeyEnd e"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 144
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 126
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 130
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 193
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 197
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 180
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 184
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 206
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 209
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator2()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 218
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 221
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 113
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 117
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 100
    invoke-direct {p0}, Lcom/nubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/nubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lcom/nubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/nubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 104
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/nubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/nubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/nubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
