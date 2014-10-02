.class public Lcom/viber/voip/contacts/b/b/a/a;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/h;


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.viber.provider.vibercontacts"
    table = "phonebookcontact"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static final D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field private static a:Ljava/lang/String;


# instance fields
.field protected A:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "version"
    .end annotation
.end field

.field protected B:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "phonetic_name"
    .end annotation
.end field

.field protected C:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "phone_label"
    .end annotation
.end field

.field protected l:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "native_id"
    .end annotation
.end field

.field protected m:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "display_name"
    .end annotation
.end field

.field protected n:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "low_display_name"
    .end annotation
.end field

.field protected o:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "numbers_name"
    .end annotation
.end field

.field protected p:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "starred"
    .end annotation
.end field

.field protected q:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "viber"
    .end annotation
.end field

.field protected r:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "viber_out"
    .end annotation
.end field

.field protected s:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_lookup_key"
    .end annotation
.end field

.field protected t:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "contact_hash"
    .end annotation
.end field

.field protected u:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "has_number"
    .end annotation
.end field

.field protected v:Z
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "has_name"
    .end annotation
.end field

.field protected w:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "native_photo_id"
    .end annotation
.end field

.field protected x:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "recently_joined_date"
    .end annotation
.end field

.field protected y:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "joined_date"
    .end annotation
.end field

.field protected z:I
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "flags"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/a;->a:Ljava/lang/String;

    .line 363
    new-instance v0, Lcom/viber/voip/contacts/b/a/d;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/d;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->id:J

    .line 70
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->l:J

    .line 71
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    .line 72
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/a;->h(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/a;->m(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    .line 75
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/a;->h(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/util/a/f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/util/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/viber/voip/util/a/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/a;->m(Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/util/a/b;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lcom/viber/voip/util/a/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    .line 93
    iget-object v1, v0, Lcom/viber/voip/util/a/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    .line 94
    iget-object v0, v0, Lcom/viber/voip/util/a/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    .line 97
    return-void

    .line 89
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/a/a;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_2
    move-object v0, p2

    goto :goto_2

    .line 96
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    .line 218
    return-void
.end method

.method public varargs a([I)Z
    .locals 1
    .parameter

    .prologue
    .line 321
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    invoke-static {v0, p1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    .line 250
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->l:J

    .line 158
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    .line 226
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->l:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    .line 302
    return-void
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    .line 278
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    .line 234
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    .line 310
    return-void
.end method

.method public d(J)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->x:J

    .line 286
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    .line 258
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    return v0
.end method

.method public e(J)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    .line 294
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    .line 266
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 337
    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 338
    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    :cond_0
    const-string/jumbo v1, "native_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    const-string/jumbo v1, "starred"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 342
    const-string/jumbo v1, "display_name"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v1, "low_display_name"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v1, "numbers_name"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "viber_out"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 348
    const-string/jumbo v1, "joined_date"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string/jumbo v1, "has_number"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 350
    const-string/jumbo v1, "has_name"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 351
    const-string/jumbo v1, "native_photo_id"

    iget-wide v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    const-string/jumbo v1, "contact_lookup_key"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v1, "viber"

    iget-boolean v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    const-string/jumbo v1, "contact_hash"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string/jumbo v1, "contact_lookup_key"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v1, "phonetic_name"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "phone_label"

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/viber/voip/contacts/b/b/a/a;->D:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b/b/a/a;->i(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->o:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContactEntity [id(contact_id)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneticName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numbersName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", starred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lookupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nativePhotoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recentlyJoined="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", joinedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->v:Z

    return v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->y:J

    return-wide v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->A:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/contacts/b/b/a/a;->z:I

    return v0
.end method
