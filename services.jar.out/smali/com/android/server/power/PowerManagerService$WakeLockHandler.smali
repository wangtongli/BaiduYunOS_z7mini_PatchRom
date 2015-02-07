.class final Lcom/android/server/power/PowerManagerService$WakeLockHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLockHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2150
    :goto_0
    return-void

    .line 2147
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->checkWakeLockArrayList()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 2145
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
