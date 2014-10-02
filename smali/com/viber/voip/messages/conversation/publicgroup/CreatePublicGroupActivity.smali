.class public Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/viber/voip/contacts/ui/co;
.implements Lcom/viber/voip/messages/controller/dj;


# instance fields
.field private A:Lcom/viber/voip/contacts/ui/ct;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:Landroid/net/Uri;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

.field private K:I

.field private L:Landroid/os/Handler;

.field private M:Z

.field private N:Landroid/widget/TextView$OnEditorActionListener;

.field private O:Landroid/widget/TextView$OnEditorActionListener;

.field private P:Ljava/lang/Runnable;

.field protected a:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected b:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected c:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected d:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected e:Lcom/viber/voip/messages/conversation/ax;

.field protected f:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected g:Lcom/viber/voip/widget/TextViewWithDescription;

.field protected h:Lcom/viber/voip/widget/AvatarView;

.field protected i:Landroid/widget/Button;

.field protected j:Lcom/viber/voip/widget/HListWithDescription;

.field protected k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/app/ProgressDialog;

.field protected n:Landroid/net/Uri;

.field protected o:Landroid/net/Uri;

.field protected p:J

.field protected q:Lcom/viber/jni/LocationInfo;

.field protected r:Lcom/viber/voip/util/b/w;

.field protected s:Lcom/viber/voip/util/b/x;

.field protected t:Lcom/viber/voip/util/b/x;

.field protected u:Z

.field protected v:Lcom/viber/voip/util/b/al;

.field w:Landroid/text/InputFilter;

.field x:Lcom/viber/voip/widget/ag;

.field private y:Lcom/viber/voip/messages/controller/GroupController;

.field private z:Lcom/viber/voip/messages/conversation/af;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 102
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->B:Ljava/util/ArrayList;

    .line 146
    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    .line 147
    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    .line 596
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/b;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->v:Lcom/viber/voip/util/b/al;

    .line 746
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/e;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->N:Landroid/widget/TextView$OnEditorActionListener;

    .line 760
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/f;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->O:Landroid/widget/TextView$OnEditorActionListener;

    .line 896
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/i;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->w:Landroid/text/InputFilter;

    .line 996
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/k;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->P:Ljava/lang/Runnable;

    .line 1036
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/n;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->x:Lcom/viber/voip/widget/ag;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->K:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Lcom/viber/voip/messages/conversation/af;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 702
    const-string/jumbo v0, "PublicGroupsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri checked, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->K:I

    .line 704
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/c;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;IZ)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->post(Ljava/lang/Runnable;)Z

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->M:Z

    .line 744
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    const-string/jumbo v2, "createPublicGroup"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 428
    new-instance v2, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p9

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/af;->b()[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->F:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-wide/from16 v17, p1

    move-wide/from16 v19, p9

    invoke-direct/range {v2 .. v20}, Lcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->y:Lcom/viber/voip/messages/controller/GroupController;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    invoke-interface {v3, v4, v2}, Lcom/viber/voip/messages/controller/GroupController;->a(ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V

    .line 431
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    .line 979
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const-string/jumbo v4, "image"

    sget-object v5, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/image/b;->a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;II)V

    .line 980
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/j;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/e;)V

    .line 994
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct/range {p0 .. p10}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(JLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 349
    invoke-static {p1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020343

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020344

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/s;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    const-string/jumbo v1, "already_added_participants"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 969
    const/16 v1, 0x68

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 970
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 823
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->E:Landroid/net/Uri;

    .line 825
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 828
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v2, "output"

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->E:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 830
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 835
    const v2, 0x7f0c041a

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 838
    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p0, v1, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 842
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x3

    const-string/jumbo v1, "PublicGroupsFragment"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->J:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-static {p1, v0}, Lcom/viber/voip/util/gl;->a(ZLcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;)V

    .line 633
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 973
    invoke-static {p1}, Lcom/viber/voip/backgrounds/a;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->p:J

    .line 974
    new-instance v0, Lcom/viber/voip/backgrounds/q;

    invoke-direct {v0, p1}, Lcom/viber/voip/backgrounds/q;-><init>(I)V

    .line 975
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->r:Lcom/viber/voip/util/b/w;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/q;->h:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->s:Lcom/viber/voip/util/b/x;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->v:Lcom/viber/voip/util/b/al;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 976
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->H:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->M:Z

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const-string/jumbo v0, "group name can\'t be empty"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 625
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const-string/jumbo v0, "group uri can\'t be empty"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 617
    const-string/jumbo v0, "select group icon"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_2
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->K:I

    if-eqz v0, :cond_3

    .line 619
    const-string/jumbo v0, "uri validating error"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    const-string/jumbo v0, "location can\'t be empty"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic g(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->L:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const v3, 0x7f0900d6

    const v2, 0x7f0900c2

    .line 1044
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    .line 1049
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    .line 1054
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    const v1, 0x7f0201c5

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setImageResource(I)V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    .line 1062
    :goto_2
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    goto :goto_0

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    goto :goto_1

    .line 1060
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescriptionColor(I)V

    goto :goto_2
.end method


# virtual methods
.method protected a(Z)I
    .locals 4
    .parameter

    .prologue
    .line 865
    const/4 v1, 0x0

    .line 866
    const/4 v0, 0x1

    .line 867
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    .line 868
    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 869
    const-string/jumbo v1, "com.viber.voip.action.NO_INTERNET_DIALOG"

    .line 870
    const/16 v0, 0x65

    .line 876
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 877
    if-eqz v1, :cond_1

    .line 878
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 879
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 882
    :cond_1
    return v0

    .line 871
    :cond_2
    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v2

    sget-object v3, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v2, v3, :cond_0

    .line 872
    const-string/jumbo v1, "com.viber.voip.action.NO_SERVICE_DIALOG"

    .line 873
    const/16 v0, 0x66

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 276
    const v0, 0x9896f2

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c(I)V

    .line 277
    return-void
.end method

.method protected a(DD)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(DDLandroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method protected a(DDLandroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-wide v7, 0x416312d000000000L

    .line 300
    invoke-virtual {p0, v5}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/p;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    new-instance v6, Lcom/viber/voip/messages/conversation/publicgroup/q;

    invoke-direct {v6, p0, p5}, Lcom/viber/voip/messages/conversation/publicgroup/q;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Landroid/os/Bundle;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/extras/a/a;->a(DDZLcom/viber/voip/messages/extras/a/c;)V

    .line 344
    new-instance v0, Lcom/viber/jni/LocationInfo;

    mul-double v1, p1, v7

    double-to-int v1, v1

    mul-double v2, p3, v7

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->q:Lcom/viber/jni/LocationInfo;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 467
    return-void
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 441
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    if-eq p1, v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupCreateError status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d()V

    .line 444
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGroupCreateError status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public a(IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    return-void
.end method

.method public a(IJIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    return-void
.end method

.method public a(IJJLjava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    if-eq p1, v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->A:Lcom/viber/voip/contacts/ui/ct;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/af;->c()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Lcom/viber/voip/messages/conversation/publicgroup/v;

    invoke-direct {v5, p0, p4, p5}, Lcom/viber/voip/messages/conversation/publicgroup/v;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;J)V

    move-object v1, p0

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ct;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(IJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public a(JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 374
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 375
    if-nez p3, :cond_2

    .line 376
    const-string/jumbo v0, "onValidateGroupUriReply OK"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 380
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 381
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->q:Lcom/viber/jni/LocationInfo;

    if-nez v0, :cond_1

    new-instance v4, Lcom/viber/jni/LocationInfo;

    invoke-direct {v4, v5, v5}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e:Lcom/viber/voip/messages/conversation/ax;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ax;->a()[Ljava/lang/String;

    move-result-object v7

    .line 383
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c()Ljava/lang/String;

    move-result-object v5

    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "upload icon"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 388
    sget-object v8, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    iget-object v9, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/t;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/publicgroup/t;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/util/upload/ak;Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V

    .line 424
    :cond_0
    :goto_1
    return-void

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->q:Lcom/viber/jni/LocationInfo;

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 415
    invoke-direct {p0, p3, v5}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onValidateGroupUriReply context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 420
    iput p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->K:I

    .line 421
    invoke-direct {p0, p3, v5}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    .line 422
    const v0, 0x10101

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    goto :goto_1
.end method

.method protected a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1009
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1010
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1011
    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v2, 0x10101

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 771
    invoke-static {p1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    const/16 v0, 0x64

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    const-string/jumbo v0, "[~!@#$%^*:;\'\"|?/><{}\\[\\]+=_\\-].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    const/16 v0, 0x6e

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    goto :goto_0

    .line 781
    :cond_2
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->K:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->I:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    :cond_3
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Z)I

    move-result v0

    .line 787
    if-eq v0, v1, :cond_4

    .line 788
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(IZ)V

    goto :goto_0

    .line 792
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->c()V

    .line 793
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->b()V

    .line 794
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    .line 795
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    invoke-virtual {v0, v1, p1}, Lcom/viber/jni/PhoneControllerWrapper;->handleValidatePublicGroupUri(ILjava/lang/String;)Z

    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/g;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/g;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/widget/TextViewWithDescription;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    iput-boolean v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->M:Z

    goto :goto_0
.end method

.method public a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->b()V

    .line 282
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/o;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/extras/a/a;->a(Lcom/viber/voip/messages/extras/a/b;Z)V

    .line 293
    return-void
.end method

.method public b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 463
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 695
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 845
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Z)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 862
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    .line 851
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    const-string/jumbo v1, "handleValidGroupUri"

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->C:I

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleValidatePublicGroupUri(ILjava/lang/String;)Z

    .line 856
    const-string/jumbo v0, ""

    const v1, 0x7f0c02ed

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->m:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 859
    :cond_1
    const v0, 0x7f0c0699

    const v1, 0x7f0c069a

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 860
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 498
    if-nez p2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 509
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 593
    :cond_2
    :goto_2
    iput-object v8, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->E:Landroid/net/Uri;

    goto :goto_0

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->E:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 504
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->E:Landroid/net/Uri;

    goto :goto_1

    .line 505
    :cond_4
    if-eqz p3, :cond_11

    const-string/jumbo v0, "backgroundUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 506
    const-string/jumbo v0, "backgroundUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 511
    :pswitch_0
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    :cond_5
    invoke-static {p0, v8}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 516
    :cond_6
    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 519
    :pswitch_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 521
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/w;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/w;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/e;)V

    .line 541
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    new-array v3, v1, [Landroid/net/Uri;

    aput-object v2, v3, v4

    const-string/jumbo v4, "image"

    sget-object v5, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/16 v6, 0xc8

    const/4 v7, -0x1

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/image/b;->a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;II)V

    .line 542
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->u:Z

    goto :goto_2

    .line 546
    :pswitch_2
    if-eqz p3, :cond_7

    const-string/jumbo v2, "backgroundId"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 547
    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_0

    .line 550
    :cond_8
    if-lez v4, :cond_9

    .line 551
    invoke-direct {p0, v4}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c(I)V

    .line 555
    :goto_3
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->u:Z

    goto/16 :goto_2

    .line 553
    :cond_9
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Landroid/net/Uri;)V

    goto :goto_3

    .line 558
    :pswitch_3
    if-eqz p3, :cond_2

    .line 559
    const-string/jumbo v0, "extra_location_lat"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v5

    .line 560
    const-string/jumbo v2, "extra_location_lon"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v5

    .line 561
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(DD)V

    goto/16 :goto_2

    .line 565
    :pswitch_4
    if-eqz p3, :cond_2

    .line 566
    const-string/jumbo v0, "added_participants"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 569
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 570
    iget-object v7, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v7, v7, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, v2, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v2, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v1

    :goto_6
    move v3, v2

    .line 571
    goto :goto_5

    .line 574
    :cond_b
    if-nez v3, :cond_a

    .line 575
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 578
    :cond_c
    const-string/jumbo v0, "removed_participants"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 580
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 581
    :cond_e
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 582
    iget-object v2, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v5, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    iget-object v2, v2, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v2, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 583
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 587
    :cond_f
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/af;->notifyDataSetChanged()V

    .line 588
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->u:Z

    goto/16 :goto_2

    :cond_10
    move v2, v3

    goto :goto_6

    :cond_11
    move-object v0, v8

    goto/16 :goto_1

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1018
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1021
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->u:Z

    if-eqz v0, :cond_1

    .line 1023
    const v1, 0x7f0c06a0

    const v2, 0x7f0c06a1

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/l;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/l;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    const/4 v4, 0x0

    const v5, 0x7f0c0377

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getImage()Lcom/viber/voip/widget/ah;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/af;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/util/ArrayList;)V

    .line 666
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 646
    :pswitch_1
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(I)V

    goto :goto_0

    .line 643
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e()V

    goto :goto_0

    .line 649
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SELECT_VIBE_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 652
    :pswitch_4
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    .line 653
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setEnabled(Z)V

    .line 655
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->D:I

    invoke-virtual {v1, v2, v0}, Lcom/viber/jni/PhoneControllerWrapper;->handleValidatePublicGroupUri(ILjava/lang/String;)Z

    goto :goto_0

    .line 658
    :pswitch_5
    invoke-static {p0}, Lcom/viber/voip/util/gn;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 659
    if-nez v0, :cond_1

    .line 660
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f0c03d7

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_1
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x7f070216
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f070217

    const v6, 0x7f020335

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const v0, 0x7f030088

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->setContentView(I)V

    .line 182
    const v0, 0x7f07021c

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->O:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->w:Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/InputFilter;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->x:Lcom/viber/voip/widget/ag;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnTextChangedListener(Lcom/viber/voip/widget/ag;)V

    .line 189
    invoke-virtual {p0, v7}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->N:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/InputFilter;)V

    .line 192
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->x:Lcom/viber/voip/widget/ag;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnTextChangedListener(Lcom/viber/voip/widget/ag;)V

    .line 195
    const v0, 0x7f07021e

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->i:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f07021f

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->l:Landroid/widget/TextView;

    .line 199
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0c06c2

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/a;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/AvatarView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f07021d

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->y:Lcom/viber/voip/messages/controller/GroupController;

    .line 216
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 218
    const v0, 0x7f07021b

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v0, 0x7f070219

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/InputFilter;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->x:Lcom/viber/voip/widget/ag;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnTextChangedListener(Lcom/viber/voip/widget/ag;)V

    .line 225
    const v0, 0x7f07021a

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/TextViewWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getEditText()Lcom/viber/voip/widget/aa;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setImeOptions(I)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getEditText()Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/widget/aa;)Lcom/viber/voip/messages/conversation/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e:Lcom/viber/voip/messages/conversation/ax;

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    const v1, 0x7f0c067a

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setDescription(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getEditText()Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/aa;->setSingleLine(Z)V

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->x:Lcom/viber/voip/widget/ag;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setOnTextChangedListener(Lcom/viber/voip/widget/ag;)V

    .line 232
    const v0, 0x7f070218

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/HListWithDescription;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->j:Lcom/viber/voip/widget/HListWithDescription;

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->j:Lcom/viber/voip/widget/HListWithDescription;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/m;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/HListWithDescription;->setOnItemClickListener(Lit/sephiroth/android/library/widget/y;)V

    .line 240
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->setImageSize(I)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getImage()Lcom/viber/voip/widget/ah;

    move-result-object v0

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/ah;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getImage()Lcom/viber/voip/widget/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;->getImage()Lcom/viber/voip/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/ah;->a()V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->j:Lcom/viber/voip/widget/HListWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->k:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoParticipantView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/HListWithDescription;->a(Landroid/view/View;)V

    .line 248
    new-instance v0, Lcom/viber/voip/messages/conversation/af;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->B:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v7, v1}, Lcom/viber/voip/messages/conversation/af;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->j:Lcom/viber/voip/widget/HListWithDescription;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->z:Lcom/viber/voip/messages/conversation/af;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/HListWithDescription;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    new-instance v0, Lcom/viber/voip/contacts/ui/ct;

    invoke-direct {v0, p0, p0}, Lcom/viber/voip/contacts/ui/ct;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->A:Lcom/viber/voip/contacts/ui/ct;

    .line 254
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b()V

    .line 260
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->r:Lcom/viber/voip/util/b/w;

    .line 261
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/b/b/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/b/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->s:Lcom/viber/voip/util/b/x;

    .line 265
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, v6, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->t:Lcom/viber/voip/util/b/x;

    .line 270
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a()V

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->L:Landroid/os/Handler;

    .line 273
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 811
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0202dd

    const v2, 0x7f0c0537

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/h;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/h;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->J:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 817
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->J:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 818
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Z)V

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 436
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 437
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 946
    if-eqz p2, :cond_0

    .line 964
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getBodyViewId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 950
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->H:Z

    if-nez v0, :cond_1

    move-object v0, p1

    .line 951
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->I:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->I:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/lang/String;Z)V

    .line 957
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getBodyViewId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 958
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->H:Z

    .line 963
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 887
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 892
    :goto_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 889
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->onBackPressed()V

    goto :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
