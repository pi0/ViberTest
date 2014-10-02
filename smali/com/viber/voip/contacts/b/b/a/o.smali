.class public Lcom/viber/voip/contacts/b/b/a/o;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/i;


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.viber.provider.vibercontacts"
    table = "vibernumbers"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field private static b:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private d:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "canonized_number"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "photo"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "actual_photo"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "viber_name"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "clear"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/o;->b:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/contacts/b/b/a/o;->c:Z

    .line 117
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/p;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/o;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/a/p;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->f:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/viber/voip/contacts/b/b/a/o;->f:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/o;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/a/o;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/b/b/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, ""

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    if-ne p0, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    invoke-super {p0, p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_3
    check-cast p1, Lcom/viber/voip/contacts/b/b/a/o;

    .line 167
    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 168
    iget-object v2, p1, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 171
    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string/jumbo v1, "canonized_number"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "clear"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    const-string/jumbo v1, "viber_name"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 152
    .line 153
    invoke-super {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->hashCode()I

    move-result v0

    .line 154
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 155
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberNumberEntityImpl [canonized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/o;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actualPhotoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
