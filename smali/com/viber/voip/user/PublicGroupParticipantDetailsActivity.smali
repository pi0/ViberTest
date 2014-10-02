.class public Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final NAME_TEXT:Ljava/lang/String; = "name_text"

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"


# instance fields
.field private mFetcherConfig:Lcom/viber/voip/util/b/x;

.field private mImageFetcher:Lcom/viber/voip/util/b/w;

.field private mParticipantNameView:Landroid/widget/TextView;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    :cond_0
    const-string/jumbo v1, "name_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method private displayPhoto()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mPhotoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030109

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mPhotoUri:Landroid/net/Uri;

    .line 54
    const-string/jumbo v0, "name_text"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const v0, 0x7f07036d

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f07036e

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mParticipantNameView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f07036c

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;

    .line 61
    invoke-static {p0}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    .line 62
    iget-object v2, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    invoke-virtual {v2}, Lcom/viber/voip/util/b/x;->b()Lcom/viber/voip/util/b/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    .line 65
    new-instance v2, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity$1;-><init>(Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mParticipantNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->displayPhoto()V

    .line 74
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhotoUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",participantName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
