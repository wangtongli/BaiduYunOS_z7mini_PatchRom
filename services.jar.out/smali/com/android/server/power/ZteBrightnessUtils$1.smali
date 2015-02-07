.class Lcom/android/server/power/ZteBrightnessUtils$1;
.super Ljava/lang/Object;
.source "ZteBrightnessUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ZteBrightnessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ZteBrightnessUtils;


# direct methods
.method constructor <init>(Lcom/android/server/power/ZteBrightnessUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/power/ZteBrightnessUtils$1;->this$0:Lcom/android/server/power/ZteBrightnessUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 314
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Lcom/android/server/power/ZteBrightnessUtils$1;->this$0:Lcom/android/server/power/ZteBrightnessUtils;

    #getter for: Lcom/android/server/power/ZteBrightnessUtils;->mProximitySensorEnabled:Z
    invoke-static {v2}, Lcom/android/server/power/ZteBrightnessUtils;->access$000(Lcom/android/server/power/ZteBrightnessUtils;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 307
    .local v0, distance:F
    iget-object v2, p0, Lcom/android/server/power/ZteBrightnessUtils$1;->this$0:Lcom/android/server/power/ZteBrightnessUtils;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/ZteBrightnessUtils$1;->this$0:Lcom/android/server/power/ZteBrightnessUtils;

    #getter for: Lcom/android/server/power/ZteBrightnessUtils;->mProximityThreshold:F
    invoke-static {v3}, Lcom/android/server/power/ZteBrightnessUtils;->access$200(Lcom/android/server/power/ZteBrightnessUtils;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/android/server/power/ZteBrightnessUtils;->mPositive:Z
    invoke-static {v2, v1}, Lcom/android/server/power/ZteBrightnessUtils;->access$102(Lcom/android/server/power/ZteBrightnessUtils;Z)Z

    .line 309
    .end local v0           #distance:F
    :cond_1
    return-void
.end method
