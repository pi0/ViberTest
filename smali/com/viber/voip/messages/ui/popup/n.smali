.class public Lcom/viber/voip/messages/ui/popup/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

.field public final b:Landroid/support/v4/view/ViewPager;

.field public final c:Landroid/support/v4/view/ViewPager;

.field public final d:Landroid/widget/ImageButton;

.field public final e:Landroid/widget/ImageButton;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/ImageButton;

.field public final i:Landroid/widget/EditText;

.field public final j:Landroid/widget/Button;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

.field public final o:Landroid/view/View;

.field public final p:Lcom/viber/voip/messages/ui/PttViewController;

.field protected q:I

.field final synthetic r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const v0, 0x7f070210

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/popup/o;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/popup/o;-><init>(Lcom/viber/voip/messages/ui/popup/n;Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 460
    const v0, 0x7f0702aa

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    .line 461
    const v0, 0x7f0702ab

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    .line 462
    const v0, 0x7f0702a7

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    .line 463
    const v0, 0x7f0702a5

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->b:Landroid/support/v4/view/ViewPager;

    .line 464
    const v0, 0x7f0702a6

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->c:Landroid/support/v4/view/ViewPager;

    .line 465
    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->f:Landroid/widget/LinearLayout;

    .line 466
    const v0, 0x7f0702a2

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->d:Landroid/widget/ImageButton;

    .line 467
    const v0, 0x7f0702ac

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->e:Landroid/widget/ImageButton;

    .line 468
    const v0, 0x7f0702a8

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->j:Landroid/widget/Button;

    .line 469
    const v0, 0x7f0702a9

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->k:Landroid/view/View;

    .line 470
    const v0, 0x7f070249

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    .line 471
    const v0, 0x7f070360

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    .line 472
    const v0, 0x7f070361

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->n:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    .line 473
    const v0, 0x7f070362

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->o:Landroid/view/View;

    .line 474
    const v0, 0x7f070201

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/PttViewController;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    .line 475
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/q;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/popup/q;-><init>(Lcom/viber/voip/messages/ui/popup/n;Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->setCallbacks(Lcom/viber/voip/messages/ui/dz;)V

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/ui/popup/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/popup/n;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    return-void
.end method
