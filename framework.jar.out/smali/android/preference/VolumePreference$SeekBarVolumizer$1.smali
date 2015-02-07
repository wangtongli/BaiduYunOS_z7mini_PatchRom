.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 251
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 255
    .local v0, volume:I
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
