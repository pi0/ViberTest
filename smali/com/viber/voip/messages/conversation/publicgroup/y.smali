.class Lcom/viber/voip/messages/conversation/publicgroup/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getEditText()Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Z)I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    const v4, 0x7f0c02ed

    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->m:Landroid/app/ProgressDialog;

    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->b(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->e:Lcom/viber/voip/messages/conversation/ax;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ax;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a([Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->q:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->a(Lcom/viber/jni/LocationInfo;)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/be;->c(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-wide v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Lcom/viber/voip/messages/conversation/publicgroup/be;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-wide v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/be;->b(J)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->finish()V

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->m:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 147
    sget-object v0, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->n:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/util/upload/ak;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/y;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/util/upload/ak;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    goto/16 :goto_0
.end method
