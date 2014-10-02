.class final Lcom/viber/voip/messages/extras/fb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/l;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/q;->a:Lcom/viber/voip/settings/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(J)J

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/q;->a:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "rate_dialog_shown_time"

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 238
    return-void

    .line 236
    :cond_0
    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    goto :goto_0
.end method
