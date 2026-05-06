import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(75, 40, 12, 76);
  assert(DomainReviewLens.score(item) == 230);
  assert(DomainReviewLens.lane(item) == 'ship');
}
