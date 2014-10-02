.class final Lcom/viber/voip/messages/extras/fb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/l;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/l;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/p;->a:Lcom/viber/voip/settings/l;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/p;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/p;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-static {p2}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(Z)Z

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/p;->a:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "show_rate_dialog"

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a()Z

    move-result v6

    invoke-interface {v0, v1, v6}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 223
    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(J)J

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/p;->a:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "rate_dialog_shown_time"

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b()J

    move-result-wide v6

    invoke-interface {v0, v1, v6, v7}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 226
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/p;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/p;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/p;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/viber/voip/util/ak;->isToday(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    return-void

    .line 223
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v5

    .line 226
    goto :goto_1

    :cond_2
    move v4, v5

    .line 227
    goto :goto_2
.end method
