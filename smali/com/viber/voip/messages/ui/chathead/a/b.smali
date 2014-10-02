.class public abstract Lcom/viber/voip/messages/ui/chathead/a/b;
.super Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/ay;


# instance fields
.field private a:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/EditText;

.field private n:Lcom/viber/voip/messages/ui/ad;

.field private o:Lcom/viber/voip/messages/conversation/ap;

.field private p:Lcom/viber/voip/messages/ui/bb;

.field private q:Lcom/viber/provider/e;

.field private r:Lcom/viber/voip/messages/ui/chathead/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a/c;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->q:Lcom/viber/provider/e;

    .line 282
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/h;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/a/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/a/g;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/chathead/a/h;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->r:Lcom/viber/voip/messages/ui/chathead/a/h;

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/chathead/a/b;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/chathead/a/b;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string/jumbo v0, "Messages_chat_head"

    return-object v0
.end method

.method public I()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->D()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->g:Lcom/viber/voip/messages/i;

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->q:Lcom/viber/provider/e;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ap;-><init>(Landroid/content/Context;ZZLcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->n()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->h()V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ap;->b(J)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->e()V

    .line 135
    return-void
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    .line 249
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 250
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Landroid/view/View;)V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public abstract c(I)V
.end method

.method public c(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 267
    :try_start_0
    const-string/jumbo v0, "com.android.internal.view.menu.ContextMenuBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 269
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0135

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    const-string/jumbo v2, "com.android.internal.view.menu.MenuBuilder$Callback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->r:Lcom/viber/voip/messages/ui/chathead/a/h;

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 272
    const-string/jumbo v4, "setCallback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 273
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v2, "show"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 275
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->h()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "show"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 318
    invoke-interface {v1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 319
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 320
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->p:Lcom/viber/voip/messages/ui/bb;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    sget v3, Lcom/viber/voip/messages/ui/bd;->c:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 322
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 325
    :cond_0
    return-void
.end method

.method public c(Lcom/viber/voip/messages/conversation/a/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 242
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    .line 243
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    move-result v0

    return v0
.end method

.method public e(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    .line 255
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 256
    return-void
.end method

.method public g(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(I)V

    .line 237
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 238
    return-void
.end method

.method public abstract h()Landroid/os/IBinder;
.end method

.method public i()Lcom/viber/voip/messages/ui/ad;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->n:Lcom/viber/voip/messages/ui/ad;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a/f;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->n:Lcom/viber/voip/messages/ui/ad;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->n:Lcom/viber/voip/messages/ui/ad;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/MenuInflater;)V

    .line 263
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    const v1, 0x7f030102

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 92
    const v1, 0x7f070136

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->a:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f070137

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->l:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0702db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/LocationEditText;

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    const v2, 0x80090

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    new-instance v2, Lcom/viber/voip/messages/ui/chathead/a/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/chathead/a/d;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->m:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->registerForContextMenu(Landroid/view/View;)V

    .line 105
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/a/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/a/e;-><init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V

    .line 118
    const v2, 0x7f070365

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v2, 0x7f070364

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ba;->k()Lcom/viber/voip/messages/ui/aj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/ay;)V

    .line 121
    new-instance v1, Lcom/viber/voip/messages/ui/bb;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->D()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->p:Lcom/viber/voip/messages/ui/bb;

    .line 122
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/b;->o:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->m()V

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onDestroyView()V

    .line 143
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/chathead/a/b;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Landroid/content/Intent;)V

    .line 207
    :goto_0
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;->D()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.POPUP_SERVICE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
