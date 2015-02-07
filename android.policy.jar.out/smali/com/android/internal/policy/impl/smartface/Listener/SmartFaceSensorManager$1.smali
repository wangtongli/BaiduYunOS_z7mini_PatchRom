.class Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;
.super Ljava/lang/Object;
.source "SmartFaceSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 87
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 64
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 65
    .local v1, near:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->access$000(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceFuncEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->pendingSensorState:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->access$100(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    #setter for: Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->pendingSensorState:F
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->access$102(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;F)F

    .line 72
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 73
    const-string v2, "SmartFaceSensorManager"

    const-string v3, "smart face near"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    #calls: Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->doCloseLeather()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->access$200(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_2
    const/high16 v2, 0x4000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 76
    :try_start_1
    const-string v2, "SmartFaceSensorManager"

    const-string v3, "smart face far"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->doOpenLeather()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
