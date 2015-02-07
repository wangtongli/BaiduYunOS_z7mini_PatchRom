.class Lcom/android/internal/policy/impl/NubiaGlobalActions$3;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    .line 335
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$100(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 337
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getVibrateInSilent()Z

    move-result v5

    .line 338
    .local v5, vibrateOn:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 339
    .local v4, ringerMode:I
    if-eq v4, v9, :cond_0

    .line 340
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 347
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 348
    .local v6, vibratorModeOn:I
    if-ne v6, v9, :cond_2

    .line 349
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 351
    .local v0, currentRingVolume:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 353
    .local v1, maxRingVolume:I
    mul-int/lit8 v7, v0, 0x64

    div-int v2, v7, v1

    .line 354
    .local v2, powerVolume:I
    const-string v7, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentLayout onClick powerVolume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v7, "persist.sys.power.volume"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v0           #currentRingVolume:I
    .end local v1           #maxRingVolume:I
    .end local v2           #powerVolume:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #calls: Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 363
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 364
    return-void

    .line 341
    .end local v6           #vibratorModeOn:I
    :cond_0
    if-eqz v5, :cond_1

    .line 342
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 359
    .restart local v6       #vibratorModeOn:I
    :cond_2
    const-string v7, "GlobalActions"

    const-string v8, "mSilentLayout onClick silent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v7, "persist.sys.power.volume"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
