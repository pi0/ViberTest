.class public Lcom/viber/voip/messages/ui/chathead/a/l;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/ui/chathead/a/b;

.field private b:Lcom/viber/voip/messages/ui/chathead/a/i;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Intent;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

.field private l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/q;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a/q;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->d:Landroid/view/WindowManager;

    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->a()V

    .line 82
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 208
    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 211
    new-instance v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    const v4, 0x7f0d00bc

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 212
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 213
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {p1, v0, v1, v5}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 217
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 220
    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 222
    return-object v1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/b;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    return-object v0
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/a/l;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->h:Landroid/content/Intent;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 392
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 393
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/a/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/a/r;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 417
    if-nez p1, :cond_0

    .line 418
    const v1, 0x7f070074

    const v2, 0x7f0c04b4

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    .line 420
    :cond_0
    const v1, 0x7f070075

    const v2, 0x7f0c0657

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    .line 421
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    const v4, 0x7f0d017b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->k:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->k:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->show()V

    .line 423
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/a/l;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->q()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/i;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->r()V

    return-void
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/chathead/a/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->d:Landroid/view/WindowManager;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->h:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->h:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 85
    new-instance v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    const v3, 0x7f0d00bc

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a/m;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    .line 151
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a/n;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    const v1, 0x7f070366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->n()V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/a/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/a/o;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->setContentView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public a(Landroid/content/Intent;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->h:Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/chathead/a/b;->a(Landroid/content/Intent;ZZ)Z

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/w;->a(Z)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->l()V

    .line 302
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 303
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationData;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->I()V

    .line 306
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Z)V

    .line 317
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/e/u;->a(Z)V

    .line 318
    invoke-static {}, Lcom/viber/voip/util/hu;->a()Lcom/viber/voip/util/hu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/hu;->a(Z)V

    .line 319
    return-void
.end method

.method public b()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/p;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/chathead/a/p;-><init>(Lcom/viber/voip/messages/ui/chathead/a/l;Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 204
    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->C()Lcom/viber/voip/messages/conversation/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->k()V

    .line 248
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onResume()V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->onResume()V

    .line 253
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->onPause()V

    .line 258
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onStop()V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->onStop()V

    .line 263
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onDestroyView()V

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onDetach()V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->onDestroyView()V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->onDetach()V

    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->e:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 276
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->l()V

    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/w;->a(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->setContentView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->b:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/i;->t()V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 330
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->onActivityBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    .line 337
    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 341
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->k:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/l;->k:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 429
    :cond_0
    return-void
.end method
