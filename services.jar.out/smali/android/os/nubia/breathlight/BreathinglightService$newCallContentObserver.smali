.class public Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;
.super Landroid/database/ContentObserver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/nubia/breathlight/BreathinglightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "newCallContentObserver"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field final synthetic this$0:Landroid/os/nubia/breathlight/BreathinglightService;


# direct methods
.method public constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 423
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    .line 424
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 425
    iput-object p2, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->ctx:Landroid/content/Context;

    .line 426
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 430
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    invoke-virtual {v1}, Landroid/os/nubia/breathlight/BreathinglightService;->getMissedCallerNum()I

    move-result v0

    .line 431
    .local v0, missCallCount:I
    const-string v1, "BreathinglightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I
    invoke-static {v3}, Landroid/os/nubia/breathlight/BreathinglightService;->access$500(Landroid/os/nubia/breathlight/BreathinglightService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  missedCallCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I
    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightService;->access$500(Landroid/os/nubia/breathlight/BreathinglightService;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 433
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v2, 0x1

    #setter for: Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z
    invoke-static {v1, v2}, Landroid/os/nubia/breathlight/BreathinglightService;->access$602(Landroid/os/nubia/breathlight/BreathinglightService;Z)Z

    .line 439
    :goto_0
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #setter for: Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I
    invoke-static {v1, v0}, Landroid/os/nubia/breathlight/BreathinglightService;->access$502(Landroid/os/nubia/breathlight/BreathinglightService;I)I

    .line 440
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    iget-object v2, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->ctx:Landroid/content/Context;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->updateMissEvent(Landroid/content/Context;)V
    invoke-static {v1, v2}, Landroid/os/nubia/breathlight/BreathinglightService;->access$400(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/content/Context;)V

    .line 441
    :cond_0
    return-void

    .line 434
    :cond_1
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->oldCall:I
    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightService;->access$500(Landroid/os/nubia/breathlight/BreathinglightService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 437
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$newCallContentObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    const/4 v2, 0x0

    #setter for: Landroid/os/nubia/breathlight/BreathinglightService;->mMissCall:Z
    invoke-static {v1, v2}, Landroid/os/nubia/breathlight/BreathinglightService;->access$602(Landroid/os/nubia/breathlight/BreathinglightService;Z)Z

    goto :goto_0
.end method
