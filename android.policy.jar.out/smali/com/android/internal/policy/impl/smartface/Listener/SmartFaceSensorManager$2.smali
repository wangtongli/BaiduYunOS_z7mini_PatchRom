.class Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;
.super Ljava/lang/Object;
.source "SmartFaceSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceDisplayFlagWallper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager$2;->val$enable:Z

    #calls: Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->setSmartFaceDisplayFlag(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;->access$300(Lcom/android/internal/policy/impl/smartface/Listener/SmartFaceSensorManager;Z)V

    .line 175
    return-void
.end method