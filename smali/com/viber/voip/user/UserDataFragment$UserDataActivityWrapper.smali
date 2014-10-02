.class Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buttonSave:Landroid/widget/Button;

.field private final buttonUseFacebookDetails:Landroid/widget/TextView;

.field private final cameraBtn:Landroid/widget/ImageView;

.field private final clearBtn:Landroid/widget/ImageView;

.field private doneBtn:Landroid/view/View;

.field private final editTextName:Landroid/widget/EditText;

.field private final galleryBtn:Landroid/widget/ImageView;

.field private final imageViewPic:Landroid/widget/ImageView;

.field private final imageViewPicBg:Landroid/widget/LinearLayout;

.field private final textViewOnPic:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/viber/voip/user/UserDataFragment;

.field private final userNameContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/viber/voip/user/UserDataFragment;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->this$0:Lcom/viber/voip/user/UserDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const v0, 0x7f0703d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f0703d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0703d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPicBg:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0703cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0703ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0703cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f070111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->textViewOnPic:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0703d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonUseFacebookDetails:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonUseFacebookDetails:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    const v0, 0x7f0703d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0703d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->userNameContainer:Landroid/view/View;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->editTextName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->doneBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->textViewOnPic:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonUseFacebookDetails:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPicBg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->galleryBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->cameraBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->userNameContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->clearBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->imageViewPic:Landroid/widget/ImageView;

    return-object v0
.end method
