.class public Lcom/viber/voip/block/e;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/block/d;


# instance fields
.field private a:Lcom/viber/voip/block/o;

.field private b:Lcom/viber/voip/block/a;

.field private c:Lcom/viber/voip/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/viber/voip/a/f;

    invoke-direct {v0}, Lcom/viber/voip/a/f;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/block/e;->c:Lcom/viber/voip/a/f;

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/4 v2, 0x1

    const/high16 v3, 0x4100

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 85
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 86
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    const v0, 0x7f0c063d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v0, 0x7f0c02b6

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v0, 0x7f0c0634

    new-instance v1, Lcom/viber/voip/block/f;

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/block/f;-><init>(Lcom/viber/voip/block/e;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/viber/voip/block/g;

    invoke-direct {v1, p0, v0, v2}, Lcom/viber/voip/block/g;-><init>(Lcom/viber/voip/block/e;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/block/e;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/block/e;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c038f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c04f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0333

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/block/e;->b:Lcom/viber/voip/block/a;

    invoke-virtual {v0}, Lcom/viber/voip/block/a;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public a(Lcom/viber/voip/block/q;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/viber/voip/block/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/block/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;)V

    .line 156
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/viber/voip/block/o;

    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/block/o;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/block/e;->a:Lcom/viber/voip/block/o;

    .line 56
    iget-object v0, p0, Lcom/viber/voip/block/e;->a:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->e()V

    .line 57
    iget-object v0, p0, Lcom/viber/voip/block/e;->a:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->n()V

    .line 59
    new-instance v0, Lcom/viber/voip/block/a;

    invoke-virtual {p0}, Lcom/viber/voip/block/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/block/e;->a:Lcom/viber/voip/block/o;

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/block/a;-><init>(Landroid/content/Context;Lcom/viber/voip/block/o;Lcom/viber/voip/block/d;)V

    iput-object v0, p0, Lcom/viber/voip/block/e;->b:Lcom/viber/voip/block/a;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/block/e;->b:Lcom/viber/voip/block/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/block/e;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/viber/voip/block/e;->a()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x7f07025c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/block/e;->setHasOptionsMenu(Z)V

    .line 41
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/block/e;->c:Lcom/viber/voip/a/f;

    invoke-virtual {v1}, Lcom/viber/voip/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const v0, 0x7f03009b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    const v1, 0x7f07025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/block/e;->a:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->m()V

    .line 67
    return-void
.end method
