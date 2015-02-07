.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "nubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "default_nubia_overlay_display_devices"

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_LEFT_OR_RIGHT:Ljava/lang/String; = "nubia_overlay_display_devices_left_right"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_MERMORY:Ljava/lang/String; = "nubia_overlay_display_devices_mermory"

.field private static final SETTING_PATTERN:Ljava/util/regex/Pattern; = null

.field static final TAG:Ljava/lang/String; = "nubiaOverlayDisplayAdapter"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mPreOverlaySetting:Ljava/lang/String;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWM:Landroid/view/WindowManager;

.field private rotated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .parameter "syncRoot"
    .parameter "context"
    .parameter "handler"
    .parameter "listener"
    .parameter "uiHandler"

    .prologue
    .line 95
    const-string v5, "nubiaOverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mPreOverlaySetting:Ljava/lang/String;

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 96
    iput-object p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 97
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mWM:Landroid/view/WindowManager;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .parameter "overlayNumber"

    .prologue
    .line 284
    packed-switch p0, :pswitch_data_0

    .line 293
    const/16 v0, 0x53

    :goto_0
    return v0

    .line 286
    :pswitch_0
    const/16 v0, 0x33

    goto :goto_0

    .line 288
    :pswitch_1
    const/16 v0, 0x55

    goto :goto_0

    .line 290
    :pswitch_2
    const/16 v0, 0x35

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleBigScreenLandscape(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, -0x2

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v9, "nubia_overlay_display_devices"

    invoke-static {v0, v9, v11}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, device:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v7

    .line 143
    :cond_1
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 144
    .local v6, windowManager:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 145
    .local v2, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 146
    .local v3, output:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 147
    iget v9, v3, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_0

    .line 148
    const-string v9, "single_ui_mode"

    invoke-static {v0, v9, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 150
    .local v4, singleMode:I
    const-string v9, "single_ui_mode_sensor_switch"

    invoke-static {v0, v9, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 151
    .local v5, singleModeSensor:I
    const-string v7, "SingleUICtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adpter:handleBigScreenLandscape,singleMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,singleModeSensor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-ne v8, v4, :cond_2

    if-nez v5, :cond_2

    .line 158
    const-string v7, "single_ui_mode_sensor_switch"

    invoke-static {v0, v7, v8, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 162
    :cond_2
    const-string v7, "nubia_overlay_display_devices"

    const-string v9, ""

    invoke-static {v0, v7, v9, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move v7, v8

    .line 164
    goto :goto_0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->handleBigScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 26

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 173
    .local v22, value:Ljava/lang/String;
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adbpter value="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_overlay_display_devices_left_right"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, leftOrRight:Ljava/lang/String;
    if-nez v22, :cond_0

    .line 177
    const-string v22, ""

    .line 181
    :cond_0
    if-nez v9, :cond_1

    .line 182
    const-string v9, "right"

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    :cond_2
    :goto_0
    return-void

    .line 188
    :cond_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 215
    const-string v2, "nubiaOverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 217
    .local v20, overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_1

    .line 219
    .end local v20           #overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 222
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v13, 0x0

    .line 223
    .local v13, count:I
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v21, v12, v15

    .line 224
    .local v21, part:Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 225
    .local v18, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 226
    const/4 v2, 0x2

    if-lt v13, v2, :cond_6

    .line 227
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Too many nubiaoverlay display devices specified: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_nubia_overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, defaultValue:Ljava/lang/String;
    if-eqz v14, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_nubia_overlay_display_devices"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mPreOverlaySetting:Ljava/lang/String;

    .line 239
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 240
    .local v5, width:I
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 241
    .local v6, height:I
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 242
    .local v7, densityDpi:I
    const-wide/high16 v2, 0x3ff0

    int-to-double v0, v5

    move-wide/from16 v23, v0

    mul-double v2, v2, v23

    int-to-double v0, v6

    move-wide/from16 v23, v0

    div-double v10, v2, v23

    .line 243
    .local v10, rate:D
    int-to-double v2, v5

    mul-double/2addr v2, v10

    double-to-int v5, v2

    .line 244
    int-to-double v2, v6

    mul-double/2addr v2, v10

    double-to-int v6, v2

    .line 245
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 246
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    .local v17, mDM:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mWM:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 248
    move-object/from16 v0, v17

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x280

    if-ne v2, v3, :cond_8

    .line 249
    int-to-double v2, v5

    const-wide v23, 0x3ff599999999999aL

    mul-double v2, v2, v23

    double-to-int v5, v2

    .line 250
    int-to-double v2, v6

    const-wide v23, 0x3ff599999999999aL

    mul-double v2, v2, v23

    double-to-int v6, v2

    .line 252
    :cond_8
    const/16 v7, 0x1e0

    .line 253
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "update width ="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " height = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " densityDpi = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v2, 0x64

    if-lt v5, v2, :cond_b

    const/16 v2, 0x1000

    if-gt v5, v2, :cond_b

    const/16 v2, 0x64

    if-lt v6, v2, :cond_b

    const/16 v2, 0x1000

    if-gt v6, v2, :cond_b

    const/16 v2, 0x78

    if-lt v7, v2, :cond_b

    const/16 v2, 0x280

    if-gt v7, v2, :cond_b

    .line 259
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v13

    .line 260
    .local v19, number:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104055a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, name:Ljava/lang/String;
    const-string v4, "singleUI_view"

    .line 263
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v8

    .line 265
    .local v8, gravity:I
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Showing overlay display device #"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ": name="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", width="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", height="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", densityDpi="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Ljava/lang/String;IIIILjava/lang/String;D)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v7           #densityDpi:I
    .end local v8           #gravity:I
    .end local v10           #rate:D
    .end local v14           #defaultValue:Ljava/lang/String;
    .end local v17           #mDM:Landroid/util/DisplayMetrics;
    .end local v19           #number:I
    :cond_9
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 275
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 278
    :cond_b
    :goto_4
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Malformed overlay display devices setting: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 273
    .restart local v14       #defaultValue:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_4
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentOverlaySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 107
    .local v1, overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 109
    .end local v1           #overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
