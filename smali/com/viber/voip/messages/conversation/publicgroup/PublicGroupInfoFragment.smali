.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/messages/conversation/ui/cs;


# static fields
.field private static K:Lcom/viber/voip/messages/conversation/ui/ci;

.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/viber/voip/messages/i;

.field private B:Lcom/viber/voip/util/b/w;

.field private C:Lcom/viber/voip/util/b/x;

.field private D:Lcom/viber/voip/util/b/x;

.field private E:Lcom/viber/voip/util/b/x;

.field private F:Z

.field private G:I

.field private H:Lcom/viber/voip/messages/conversation/ui/ci;

.field private final I:Lcom/viber/voip/util/b/al;

.field private final J:Lcom/viber/voip/util/b/al;

.field private b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

.field private c:Lit/sephiroth/android/library/widget/HListView;

.field private d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

.field private e:Lcom/viber/voip/messages/conversation/ap;

.field private f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/viber/voip/widget/VibeGroupNameTextView;

.field private k:Lcom/viber/voip/widget/TextViewWithDescription;

.field private l:Lcom/viber/voip/widget/TextViewWithDescription;

.field private m:Lcom/viber/voip/widget/TextViewWithDescription;

.field private n:Lcom/viber/voip/widget/TextViewWithDescription;

.field private o:Lcom/viber/voip/widget/TextViewWithDescription;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/CheckBox;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/viber/voip/messages/ui/view/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/aw;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aw;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->K:Lcom/viber/voip/messages/conversation/ui/ci;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    .line 116
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->K:Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->H:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 118
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/au;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/au;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->I:Lcom/viber/voip/util/b/al;

    .line 127
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/av;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/av;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->J:Lcom/viber/voip/util/b/al;

    return-void
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 484
    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/TextViewWithDescription;->setLeftDrawable(Landroid/graphics/Bitmap;)V

    .line 255
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 232
    const v0, 0x7f070374

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;

    .line 233
    const v1, 0x7f070376

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    .line 234
    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/ax;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ax;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V

    .line 250
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/ap;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLoader participants:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->getMaxCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 301
    const-string/jumbo v0, "Activating small list"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a()V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a(Lcom/viber/voip/messages/conversation/ap;I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->h:Landroid/widget/TextView;

    const v1, 0x7f0c0674

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->H:Lcom/viber/voip/messages/conversation/ui/ci;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v1

    const-string/jumbo v3, ""

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/ci;->a(ZJLjava/lang/String;)V

    .line 322
    return-void

    .line 307
    :cond_0
    const-string/jumbo v0, "Activating large list"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HListView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;->a()V

    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bd;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    invoke-direct {v0, v1, v2, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bd;-><init>(Landroid/content/Context;ILcom/viber/voip/messages/conversation/ap;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

    .line 313
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->b(I)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d:Lcom/viber/voip/messages/conversation/publicgroup/bd;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/publicgroup/aq;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 413
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->x()[Ljava/lang/String;

    move-result-object v0

    .line 415
    array-length v1, v0

    if-lez v1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->l:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->l:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->k:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->k:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f0c0672

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->m:Lcom/viber/voip/widget/TextViewWithDescription;

    const v1, 0x7f0c0420

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 432
    new-instance v3, Lcom/viber/jni/LocationInfo;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->A()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->z()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    .line 433
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->lat()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/jni/LocationInfo;->lng()D

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d()J

    move-result-wide v5

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v7

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/messages/controller/GroupController;->a(DDJJ)V

    .line 439
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->j:Lcom/viber/voip/widget/VibeGroupNameTextView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->E()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/VibeGroupNameTextView;->a(Ljava/lang/String;Z)V

    .line 441
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->C()Ljava/lang/String;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1

    .line 449
    :try_start_0
    new-instance v2, Landroid/text/SpannableString;

    const v3, 0x7f0c06af

    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 451
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v3

    iget-object v3, v3, Lcom/viber/voip/bd;->Q:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 453
    new-instance v5, Lcom/viber/voip/ui/style/ColoredURLSpan;

    invoke-direct {v5, v3, v4}, Lcom/viber/voip/ui/style/ColoredURLSpan;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 454
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->B:Lcom/viber/voip/util/b/w;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->C:Lcom/viber/voip/util/b/x;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->I:Lcom/viber/voip/util/b/al;

    invoke-virtual {v2, v0, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 465
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->B:Lcom/viber/voip/util/b/w;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->E:Lcom/viber/voip/util/b/x;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->J:Lcom/viber/voip/util/b/al;

    invoke-virtual {v2, v0, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 472
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f()V

    .line 475
    if-eqz p2, :cond_2

    .line 476
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->e()V

    .line 478
    :cond_2
    return-void

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->l:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v3}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto/16 :goto_0

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->k:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v3}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto/16 :goto_1

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->m:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 455
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-static {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveGroupNotification isSmartNotificationOn - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->A:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/messages/controller/GroupController;->a(JZ)V

    .line 590
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->F:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 593
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Lcom/viber/voip/util/b/x;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->D:Lcom/viber/voip/util/b/x;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Lcom/viber/voip/util/b/w;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->B:Lcom/viber/voip/util/b/w;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 547
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->A:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/bb;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/publicgroup/bb;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 557
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 560
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bc;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bc;-><init>(Landroid/content/Context;I)V

    .line 562
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 563
    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->measure(II)V

    .line 564
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->getMeasuredHeight()I

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/HListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 566
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 567
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d()V

    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s()Z

    move-result v3

    .line 571
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o()Z

    move-result v4

    .line 572
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->q:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0c0495

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 573
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 575
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->p:Landroid/widget/TextView;

    if-nez v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 576
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->q:Landroid/widget/TextView;

    if-nez v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 577
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->r:Landroid/widget/CheckBox;

    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    if-nez v4, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    return-void

    .line 572
    :cond_0
    const v0, 0x7f0c0494

    goto :goto_0

    :cond_1
    move v0, v2

    .line 575
    goto :goto_1

    :cond_2
    move v0, v2

    .line 576
    goto :goto_2

    :cond_3
    move v0, v2

    .line 577
    goto :goto_3

    :cond_4
    move v1, v2

    .line 578
    goto :goto_4
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 498
    const-string/jumbo v1, "extra_group_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 499
    const-string/jumbo v1, "extra_group_name"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v1, "participants_count"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string/jumbo v1, "is_public_group_compose"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "500"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 505
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c04c1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    check-cast p1, Lcom/viber/voip/messages/conversation/ap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/ap;Z)V

    .line 295
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    check-cast p1, Lcom/viber/voip/messages/conversation/ap;

    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/ap;Z)V

    .line 290
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x8

    .line 371
    check-cast p1, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    .line 372
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->g()V

    .line 374
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    .line 375
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 376
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->v:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 400
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/conversation/ap;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 401
    :cond_1
    if-eqz v0, :cond_5

    .line 402
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/conversation/ap;->b(J)V

    .line 407
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/aq;Z)V

    .line 408
    return-void

    .line 381
    :cond_2
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    if-eq v2, v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 383
    :goto_2
    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->u:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->x:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    :goto_3
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->v:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 382
    goto :goto_2

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    .line 394
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->setVisibility(I)V

    goto :goto_3

    .line 404
    :cond_5
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->H:Lcom/viber/voip/messages/conversation/ui/ci;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v3

    const-string/jumbo v5, ""

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/viber/voip/messages/conversation/ui/ci;->a(ZJLjava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.INVITE_TO_PUBLIC_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v1, "extra_group_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 514
    const-string/jumbo v1, "extra_group_name"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 517
    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const v1, 0x7f0c0695

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->G:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c0696

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/az;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/az;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 544
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c0698

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/ba;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ba;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    new-instance v0, Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->A:Lcom/viber/voip/messages/i;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ap;-><init>(Landroid/content/Context;ZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->n()V

    .line 277
    new-instance v0, Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/view/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->z:Lcom/viber/voip/messages/ui/view/c;

    .line 278
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 355
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/ui/ci;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    check-cast p1, Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->H:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 327
    const v2, 0x7f07033b

    if-ne v1, v2, :cond_1

    .line 328
    const-string/jumbo v0, "add participants"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const v2, 0x7f070373

    if-ne v1, v2, :cond_2

    .line 331
    const-string/jumbo v0, "invite"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b()V

    goto :goto_0

    .line 333
    :cond_2
    const v2, 0x7f07037a

    if-ne v1, v2, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->A()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->z()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v7}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v8}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->B()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 336
    :cond_3
    const v2, 0x7f070387

    if-ne v1, v2, :cond_4

    .line 337
    const-string/jumbo v0, "btn_exit_vibe"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c()V

    goto :goto_0

    .line 339
    :cond_4
    const v2, 0x7f07037d

    if-ne v1, v2, :cond_6

    .line 340
    const-string/jumbo v1, "notification_view"

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->s()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    invoke-direct {p0, v10}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Z)V

    goto :goto_0

    :cond_5
    move v10, v0

    goto :goto_1

    .line 342
    :cond_6
    const v2, 0x7f070382

    if-ne v1, v2, :cond_0

    .line 343
    const-string/jumbo v1, "mute_group_view"

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->o()Z

    move-result v1

    if-nez v1, :cond_7

    .line 346
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->z:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0, v10}, Lcom/viber/voip/messages/ui/view/c;->b(Z)V

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->A:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->f:Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, v10, v9}, Lcom/viber/voip/messages/controller/x;->a(JZLcom/viber/voip/messages/controller/ai;)V

    goto/16 :goto_0

    :cond_7
    move v10, v0

    .line 345
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->A:Lcom/viber/voip/messages/i;

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020335

    const/4 v4, 0x0

    .line 164
    const v0, 0x7f03010b

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    const v0, 0x7f070377

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoSmallParticipantList;

    .line 167
    const v0, 0x7f070378

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c:Lit/sephiroth/android/library/widget/HListView;

    .line 168
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e()V

    .line 169
    const v0, 0x7f070372

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->g:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f070375

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->h:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0700d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->i:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f070371

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/VibeGroupNameTextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->j:Lcom/viber/voip/widget/VibeGroupNameTextView;

    .line 175
    const v0, 0x7f07005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->k:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->k:Lcom/viber/voip/widget/TextViewWithDescription;

    const v2, 0x7f0c0679

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 178
    const v0, 0x7f070379

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->l:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->l:Lcom/viber/voip/widget/TextViewWithDescription;

    const v2, 0x7f0c067a

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 181
    const v0, 0x7f07037a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->m:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->m:Lcom/viber/voip/widget/TextViewWithDescription;

    const v2, 0x7f0c067b

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 184
    const v0, 0x7f07037b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->n:Lcom/viber/voip/widget/TextViewWithDescription;

    const v2, 0x7f0c067c

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 187
    const v0, 0x7f07037c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->o:Lcom/viber/voip/widget/TextViewWithDescription;

    const v2, 0x7f0c0683

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 190
    const v0, 0x7f070380

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->p:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f070381

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->q:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f07037f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->r:Landroid/widget/CheckBox;

    .line 193
    const v0, 0x7f070384

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->s:Landroid/widget/CheckBox;

    .line 194
    const v0, 0x7f07037d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    .line 195
    const v0, 0x7f07033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->v:Landroid/view/View;

    .line 196
    const v0, 0x7f070387

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->u:Landroid/view/View;

    .line 197
    const v0, 0x7f070382

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    .line 198
    const v0, 0x7f070373

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->x:Landroid/widget/Button;

    .line 199
    const v0, 0x7f070388

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->y:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->y:Landroid/widget/TextView;

    invoke-static {}, Lcom/viber/voip/util/hu;->a()Lcom/viber/voip/util/hu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->m:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->B:Lcom/viber/voip/util/b/w;

    .line 211
    new-instance v2, Lcom/viber/voip/util/b/z;

    invoke-direct {v2}, Lcom/viber/voip/util/b/z;-><init>()V

    sget-object v3, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/util/b/b/b;

    invoke-direct {v3, v0}, Lcom/viber/voip/util/b/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->C:Lcom/viber/voip/util/b/x;

    .line 215
    new-instance v2, Lcom/viber/voip/util/b/z;

    invoke-direct {v2}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v2, v5, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->D:Lcom/viber/voip/util/b/x;

    .line 219
    invoke-static {v0}, Lcom/viber/voip/util/b/x;->b(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->E:Lcom/viber/voip/util/b/x;

    .line 220
    iput-boolean v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->F:Z

    .line 221
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Landroid/view/View;)V

    .line 222
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->m()V

    .line 283
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->F:Z

    .line 285
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 364
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->K:Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->H:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 365
    return-void
.end method
